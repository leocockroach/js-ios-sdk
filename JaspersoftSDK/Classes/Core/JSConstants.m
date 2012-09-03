//
//  JSConstants.m
//  RestKitDemo
//
//  Created by Vlad Zavadskyi on 07.08.12.
//  Copyright (c) 2012 Jaspersoft. All rights reserved.
//

#import "JSConstants.h"

// Shared constants instance. This is a singleton
static JSConstants *_sharedInstance;

@implementation JSConstants

@synthesize WS_TYPE_ACCESS_GRANT_SCHEMA;
@synthesize WS_TYPE_ADHOC_DATA_VIEW;
@synthesize WS_TYPE_ADHOC_REPORT;
@synthesize WS_TYPE_BEAN;
@synthesize WS_TYPE_CONTENT_RESOURCE;
@synthesize WS_TYPE_CSS;
@synthesize WS_TYPE_CUSTOM;
@synthesize WS_TYPE_DATASOURCE;
@synthesize WS_TYPE_DASHBOARD_STATE;
@synthesize WS_TYPE_DOMAIN;
@synthesize WS_TYPE_DOMAIN_TOPIC;
@synthesize WS_TYPE_FOLDER;
@synthesize WS_TYPE_FONT;
@synthesize WS_TYPE_IMG;
@synthesize WS_TYPE_INPUT_CONTROL;
@synthesize WS_TYPE_JAR;
@synthesize WS_TYPE_JDBC;
@synthesize WS_TYPE_JNDI;
@synthesize WS_TYPE_JRXML;
@synthesize WS_TYPE_LOV;
@synthesize WS_TYPE_OLAP_MONDRIAN_CON;
@synthesize WS_TYPE_OLAP_MONDRIAN_SCHEMA;
@synthesize WS_TYPE_OLAP_UNIT;
@synthesize WS_TYPE_OLAP_XMLA_CON;
@synthesize WS_TYPE_PROP;
@synthesize WS_TYPE_QUERY;
@synthesize WS_TYPE_REFERENCE;
@synthesize WS_TYPE_REPORT_OPTIONS;
@synthesize WS_TYPE_REPORT_UNIT;
@synthesize WS_TYPE_XML;
@synthesize WS_TYPE_XMLA_CONNECTION;
@synthesize WS_TYPE_UNKNOW;
@synthesize DT_TYPE_TEXT ;
@synthesize DT_TYPE_NUMBER;
@synthesize DT_TYPE_DATE ;
@synthesize DT_TYPE_DATE_TIME ;
@synthesize IC_TYPE_BOOLEAN ;
@synthesize IC_TYPE_SINGLE_VALUE ;
@synthesize IC_TYPE_SINGLE_SELECT_LIST_OF_VALUES ;
@synthesize IC_TYPE_SINGLE_SELECT_QUERY;
@synthesize IC_TYPE_MULTI_VALUE ;
@synthesize IC_TYPE_MULTI_SELECT_LIST_OF_VALUES ;
@synthesize IC_TYPE_MULTI_SELECT_QUERY ;
@synthesize IC_TYPE_SINGLE_SELECT_LIST_OF_VALUES_RADIO ;
@synthesize IC_TYPE_SINGLE_SELECT_QUERY_RADIO ;
@synthesize IC_TYPE_MULTI_SELECT_LIST_OF_VALUES_CHECKBOX ;
@synthesize IC_TYPE_MULTI_SELECT_QUERY_CHECKBOX ;
@synthesize PROP_VERSION ;
@synthesize PROP_PARENT_FOLDER ;
@synthesize PROP_RESOURCE_TYPE ;
@synthesize PROP_CREATION_DATE ;
@synthesize PROP_FILERESOURCE_HAS_DATA ;
@synthesize PROP_FILERESOURCE_IS_REFERENCE ;
@synthesize PROP_FILERESOURCE_REFERENCE_URI ;
@synthesize PROP_FILERESOURCE_WSTYPE ;
@synthesize PROP_DATA ;
@synthesize PROP_DATASOURCE_MAPPING ;
@synthesize PROP_DATASOURCE_DRIVER_CLASS ;
@synthesize PROP_DATASOURCE_CONNECTION_URL ;
@synthesize PROP_DATASOURCE_USERNAME ;
@synthesize PROP_DATASOURCE_PASSWORD;
@synthesize PROP_DATASOURCE_JNDI_NAME;
@synthesize PROP_DATASOURCE_BEAN_NAME;
@synthesize PROP_DATASOURCE_BEAN_METHOD;
@synthesize PROP_DATASOURCE_CUSTOM_SERVICE_CLASS;
@synthesize PROP_DATASOURCE_CUSTOM_PROPERTY_MAP;
@synthesize PROP_RU_DATASOURCE_TYPE;
@synthesize PROP_RU_IS_MAIN_REPORT;
@synthesize PROP_RU_INPUTCONTROL_RENDERING_VIEW;
@synthesize PROP_RU_REPORT_RENDERING_VIEW;
@synthesize PROP_RU_ALWAYS_PROPMT_CONTROLS;
@synthesize PROP_RU_CONTROLS_LAYOUT;
@synthesize PROP_DATATYPE_STRICT_MAX;
@synthesize PROP_DATATYPE_STRICT_MIN;
@synthesize PROP_DATATYPE_MIN_VALUE;
@synthesize PROP_DATATYPE_MAX_VALUE;
@synthesize PROP_DATATYPE_PATTERN;
@synthesize PROP_DATATYPE_TYPE;
@synthesize PROP_LOV;
@synthesize PROP_LOV_LABEL;
@synthesize PROP_LOV_VALUE;
@synthesize PROP_INPUTCONTROL_TYPE;
@synthesize PROP_INPUTCONTROL_IS_MANDATORY;
@synthesize PROP_INPUTCONTROL_IS_READONLY;
@synthesize PROP_INPUTCONTROL_IS_VISIBLE;
@synthesize PROP_QUERY;
@synthesize PROP_QUERY_VISIBLE_COLUMNS;
@synthesize PROP_QUERY_VISIBLE_COLUMN_NAME;
@synthesize PROP_QUERY_VALUE_COLUMN;
@synthesize PROP_QUERY_LANGUAGE;
@synthesize PROP_QUERY_DATA;
@synthesize PROP_QUERY_DATA_ROW;
@synthesize PROP_QUERY_DATA_ROW_COLUMN;
@synthesize PROP_XMLA_URI;
@synthesize PROP_XMLA_CATALOG;
@synthesize PROP_XMLA_DATASOURCE;
@synthesize PROP_XMLA_USERNAME;
@synthesize PROP_XMLA_PASSWORD;
@synthesize PROP_MDX_QUERY;
@synthesize CONTENT_TYPE_PDF;
@synthesize CONTENT_TYPE_HTML;
@synthesize CONTENT_TYPE_XLS;
@synthesize CONTENT_TYPE_RTF;
@synthesize CONTENT_TYPE_CSV;
@synthesize CONTENT_TYPE_IMG;

+ (JSConstants *)sharedInstance {
    @synchronized([JSConstants class]) {
		if (!_sharedInstance) {
            _sharedInstance = [[self alloc] init];
        }
        
		return _sharedInstance;
	}
    
	return nil;
}

+ (id)alloc {
	@synchronized([JSConstants class]) {
        return [super alloc];
	}
    
	return nil;
}

- (id)init {
	if (self = [super init]) {
        // Initialize constants
        [self setWSConstants];
        [self setDTConstants];
        [self setICConstants];
        [self setGeneralPROPConstants];
        [self setFileresourcePROPConstants];
        [self setDatasourcePROPConstants];
        [self setReportUnitPROPConstants];
        [self setDataTypePROPConstants];
        [self setListOfValuesPROPConstants];
        [self setInputControlPROPConstants];
        [self setQueryPROPConstants];
        [self setOLAPPROPConstants];
        [self setContentTypeConstants];
	}
    
	return self;
}

- (NSString *)stringFromBOOL:(BOOL)aBOOL {
    return aBOOL ? @"true" : @"false";
}

#pragma mark -
#pragma mark Constants initializers

- (void)setWSConstants {
    WS_TYPE_ACCESS_GRANT_SCHEMA = @"accessGrantSchema";
    WS_TYPE_ADHOC_DATA_VIEW = @"adhocDataView";
    WS_TYPE_ADHOC_REPORT = @"adhocReport";
    WS_TYPE_BEAN = @"bean";
    WS_TYPE_CONTENT_RESOURCE = @"contentResource";
    WS_TYPE_CSS = @"css";
    WS_TYPE_CUSTOM = @"custom";
    WS_TYPE_DATASOURCE = @"datasource";
    WS_TYPE_DASHBOARD_STATE = @"dashboardState";
    WS_TYPE_DOMAIN = @"domain";
    WS_TYPE_DOMAIN_TOPIC = @"domainTopic";
    WS_TYPE_FOLDER = @"folder";
    WS_TYPE_FONT = @"font";
    WS_TYPE_IMG = @"img";
    WS_TYPE_INPUT_CONTROL = @"inputControl";
    WS_TYPE_JAR = @"jar";
    WS_TYPE_JDBC = @"jdbc";
    WS_TYPE_JNDI = @"jndi";
    WS_TYPE_JRXML = @"jrxml";
    WS_TYPE_LOV = @"lov";
    WS_TYPE_OLAP_MONDRIAN_CON = @"olapMondrianCon";
    WS_TYPE_OLAP_MONDRIAN_SCHEMA = @"olapMondrianSchema";
    WS_TYPE_OLAP_UNIT = @"olapUnit";
    WS_TYPE_OLAP_XMLA_CON = @"olapXmlaCon";
    WS_TYPE_PROP = @"prop";
    WS_TYPE_QUERY = @"query";
    WS_TYPE_REFERENCE = @"reference";
    WS_TYPE_REPORT_OPTIONS = @"reportOptions";
    WS_TYPE_REPORT_UNIT = @"reportUnit";
    WS_TYPE_XML = @"xml";
    WS_TYPE_XMLA_CONNECTION = @"xmlaConnection";
    WS_TYPE_UNKNOW = @"unknow";
}

- (void)setDTConstants {
    DT_TYPE_TEXT = 1;
    DT_TYPE_NUMBER = 2;
    DT_TYPE_DATE = 3;
    DT_TYPE_DATE_TIME = 4;
}

- (void)setICConstants {
    IC_TYPE_BOOLEAN = 1;
    IC_TYPE_SINGLE_VALUE = 2;
    IC_TYPE_SINGLE_SELECT_LIST_OF_VALUES = 3;
    IC_TYPE_SINGLE_SELECT_QUERY = 4;
    IC_TYPE_MULTI_VALUE = 5;
    IC_TYPE_MULTI_SELECT_LIST_OF_VALUES = 6;
    IC_TYPE_MULTI_SELECT_QUERY = 7;
    IC_TYPE_SINGLE_SELECT_LIST_OF_VALUES_RADIO = 8;
    IC_TYPE_SINGLE_SELECT_QUERY_RADIO = 9;
    IC_TYPE_MULTI_SELECT_LIST_OF_VALUES_CHECKBOX = 10;
    IC_TYPE_MULTI_SELECT_QUERY_CHECKBOX = 11;
}

- (void)setGeneralPROPConstants {
    PROP_VERSION = @"PROP_VERSION";
    PROP_PARENT_FOLDER = @"PROP_PARENT_FOLDER";
    PROP_RESOURCE_TYPE = @"PROP_RESOURCE_TYPE";
    PROP_CREATION_DATE = @"PROP_CREATION_DATE";
}

- (void)setFileresourcePROPConstants {
    PROP_FILERESOURCE_HAS_DATA = @"PROP_HAS_DATA";
    PROP_FILERESOURCE_IS_REFERENCE = @"PROP_IS_REFERENCE";
    PROP_FILERESOURCE_REFERENCE_URI = @"PROP_REFERENCE_URI";
    PROP_FILERESOURCE_WSTYPE = @"PROP_WSTYPE";
    PROP_DATA = @"PROP_DATA";
    PROP_DATASOURCE_MAPPING = @"DATASOURCE_MAPPING";
}

- (void)setDatasourcePROPConstants { 
    PROP_DATASOURCE_DRIVER_CLASS = @"PROP_DATASOURCE_DRIVER_CLASS";
    PROP_DATASOURCE_CONNECTION_URL = @"PROP_DATASOURCE_CONNECTION_URL";
    PROP_DATASOURCE_USERNAME = @"PROP_DATASOURCE_USERNAME";
    PROP_DATASOURCE_PASSWORD = @"PROP_DATASOURCE_PASSWORD";
    PROP_DATASOURCE_JNDI_NAME = @"PROP_DATASOURCE_JNDI_NAME";
    PROP_DATASOURCE_BEAN_NAME = @"PROP_DATASOURCE_BEAN_NAME";
    PROP_DATASOURCE_BEAN_METHOD = @"PROP_DATASOURCE_BEAN_METHOD";
    PROP_DATASOURCE_CUSTOM_SERVICE_CLASS = @"PROP_DATASOURCE_CUSTOM_SERVICE_CLASS";
    PROP_DATASOURCE_CUSTOM_PROPERTY_MAP = @"PROP_DATASOURCE_CUSTOM_PROPERTY_MAP";
}

- (void)setReportUnitPROPConstants {
    PROP_RU_DATASOURCE_TYPE = @"PROP_RU_DATASOURCE_TYPE";
    PROP_RU_IS_MAIN_REPORT = @"PROP_RU_IS_MAIN_REPORT";
    PROP_RU_INPUTCONTROL_RENDERING_VIEW = @"PROP_RU_INPUTCONTROL_RENDERING_VIEW";
    PROP_RU_REPORT_RENDERING_VIEW = @"PROP_RU_REPORT_RENDERING_VIEW";
    PROP_RU_ALWAYS_PROPMT_CONTROLS = @"PROP_RU_ALWAYS_PROPMT_CONTROLS";
    PROP_RU_CONTROLS_LAYOUT = @"PROP_RU_CONTROLS_LAYOUT";
}

- (void)setDataTypePROPConstants {
    PROP_DATATYPE_STRICT_MAX = @"PROP_DATATYPE_STRICT_MAX";
    PROP_DATATYPE_STRICT_MIN = @"PROP_DATATYPE_STRICT_MIN";
    PROP_DATATYPE_MIN_VALUE = @"PROP_DATATYPE_MIN_VALUE";
    PROP_DATATYPE_MAX_VALUE = @"PROP_DATATYPE_MAX_VALUE";
    PROP_DATATYPE_PATTERN = @"PROP_DATATYPE_PATTERN";
    PROP_DATATYPE_TYPE = @"PROP_DATATYPE_TYPE";
}

- (void)setListOfValuesPROPConstants { 
    PROP_LOV = @"PROP_LOV";
    PROP_LOV_LABEL = @"PROP_LOV_LABEL";
    PROP_LOV_VALUE = @"PROP_LOV_VALUE";
}

- (void)setInputControlPROPConstants {
    PROP_INPUTCONTROL_TYPE = @"PROP_INPUTCONTROL_TYPE";                
    PROP_INPUTCONTROL_IS_MANDATORY = @"PROP_INPUTCONTROL_IS_MANDATORY";
    PROP_INPUTCONTROL_IS_READONLY = @"PROP_INPUTCONTROL_IS_READONLY";  
    PROP_INPUTCONTROL_IS_VISIBLE = @"PROP_INPUTCONTROL_IS_VISIBLE";    
}

- (void)setQueryPROPConstants {
    PROP_QUERY_DATA = @"PROP_QUERY_DATA";
    PROP_QUERY_DATA_ROW = @"PROP_QUERY_DATA_ROW";
    PROP_QUERY_DATA_ROW_COLUMN = @"PROP_QUERY_DATA_ROW_COLUMN";
}

- (void)setOLAPPROPConstants {
    PROP_XMLA_URI = @"PROP_XMLA_URI";
    PROP_XMLA_CATALOG = @"PROP_XMLA_CATALOG";
    PROP_XMLA_DATASOURCE = @"PROP_XMLA_DATASOURCE";
    PROP_XMLA_USERNAME = @"PROP_XMLA_USERNAME";
    PROP_XMLA_PASSWORD = @"PROP_XMLA_PASSWORD";
    PROP_MDX_QUERY = @"PROP_MDX_QUERY";
}

- (void)setContentTypeConstants {
    CONTENT_TYPE_PDF = @"pdf";
    CONTENT_TYPE_HTML = @"html";
    CONTENT_TYPE_XLS = @"xls";
    CONTENT_TYPE_RTF = @"rtf";
    CONTENT_TYPE_CSV = @"csv";
    CONTENT_TYPE_IMG = @"img";
}

@end