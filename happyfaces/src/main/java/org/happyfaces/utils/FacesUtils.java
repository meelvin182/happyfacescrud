package org.happyfaces.utils;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

import javax.faces.application.FacesMessage;
import javax.faces.application.FacesMessage.Severity;
import javax.faces.context.FacesContext;

import org.apache.log4j.Logger;
import org.happyfaces.beans.SessionPreferences;

/**
 * Helper class to deal with JSF messages.
 * 
 * @author Ignas
 * 
 */
public class FacesUtils {

    /**
     * Application message file root name
     */
    private static final String MESSAGE_FILE_NAME = "messages";

    /** Logger. */
    private static Logger log = Logger.getLogger(FacesUtils.class.getName());

    /**
     * Show info message in view.
     */
    public static void info(String messageKey, String... params) {
        addFacesMessage(FacesMessage.SEVERITY_INFO, messageKey, params);
    }

    /**
     * Show warning message in view.
     */
    public static void warn(String messageKey, String... params) {
        addFacesMessage(FacesMessage.SEVERITY_WARN, messageKey, params);
    }

    /**
     * Show error message in view.
     */
    public static void error(String messageKey, String... params) {
        addFacesMessage(FacesMessage.SEVERITY_ERROR, messageKey, params);
    }

    /**
     * Return the Locale to be used in localizing the response being created for
     * this view.
     */
    public static Locale getLocale() {
        return FacesContext.getCurrentInstance().getViewRoot().getLocale();
    }

    /**
     * Translate messageKey to message for current locale.
     */
    public static String getMessage(String key) {
        return ResourceBundle.getBundle(MESSAGE_FILE_NAME, SessionPreferences.getCurrentLocale()).getString(key);
    }

    /**
     * Translate messageKey to message for provided locale.
     */
    public static String getMessage(String key, Locale locale) {
        return ResourceBundle.getBundle(MESSAGE_FILE_NAME, locale).getString(key);
    }

    /**
     * For using messages from messages.properties
     */
    private static void addFacesMessage(Severity severity, String messageKey, String... params) {
        addMessageFromBundle(severity, messageKey, MESSAGE_FILE_NAME, params);
    }

    private static void addMessageFromBundle(Severity severity, String messageKey, String bundleName, String... params) {
        ResourceBundle bundle = ResourceBundle.getBundle(bundleName, FacesContext.getCurrentInstance().getViewRoot().getLocale());
        addFacesMessage(severity, messageKey, bundle, params);
    }

    /**
     * Helper reusable method to add message to view.
     */
    private static void addFacesMessage(Severity severity, String messageKey, ResourceBundle bundle, String... params) {
        String message = messageKey;
        try {
            if (params.length == 0) {
                message = bundle.getString(messageKey);
            } else {
                message = bundle.getString(messageKey);
                MessageFormat mf = new MessageFormat(message, SessionPreferences.getCurrentLocale());
                message = mf.format(params, new StringBuffer(), null).toString();
            }
        } catch (MissingResourceException e) {
            log.warn(String.format("There was no resource in messages.properties for %s", messageKey));
        }
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(severity, message, ""));
    }

    public static void addFacesMessageWithoutKey(Severity severity, String message) {
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(severity, message, ""));
    }

    /**
     * Signal the JavaServer faces implementation that, as soon as the current
     * phase of the request processing lifecycle has been completed, control
     * should be passed to the Render Response phase, bypassing any phases that
     * have not been executed yet.
     */
    public static void renderResponse() {
        FacesContext.getCurrentInstance().renderResponse();
    }

    /**
     * @param el
     *            EL
     * @param clazz
     *            Class that is expected as return.
     * @return Result of EL expression evaluation.
     */
    @SuppressWarnings("rawtypes")
    public static Object evaluateEL(String el, Class clazz) {
        // get current EL context
        javax.el.ELContext elContext = FacesContext.getCurrentInstance().getELContext();

        // get the expression factory (for JSF or ADF).
        javax.el.ExpressionFactory expressionFactory =

        FacesContext.getCurrentInstance().getApplication().getExpressionFactory();

        javax.el.ValueExpression valueExpression = expressionFactory.createValueExpression(elContext, el, clazz);
        return valueExpression.getValue(elContext);
    }
}
