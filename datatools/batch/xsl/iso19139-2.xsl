<?xml version="1.0"?>
<!-- XSLT 2.0 -->
<xml xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xsl:version="1.0" 
	xmlns:gmd="http://www.isotc211.org/2005/gmd"
	xmlns:xlink="http://www.w3.org/1999/xlink" 
	xmlns:gco="http://www.isotc211.org/2005/gco"
	xmlns:gml="http://www.opengis.net/gml"
	xml:space="preserve">

<id><xsl:value-of select="//gmd:fileIdentifier" /></id>
<owner_org>ec</owner_org>
<title><xsl:value-of select="//gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:title/gco:CharacterString"></xsl:value-of></title>
<title_fra><xsl:value-of select="//gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:title/gmd:PT_FreeText/gmd:textGroup/gmd:LocalisedCharacterString"/></title_fra>
<notes><xsl:value-of select="//gmd:abstract/gco:CharacterString" /></notes>
<notes_fra><xsl:value-of select="//gmd:abstract/gmd:PT_FreeText/gmd:textGroup/gmd:LocalisedCharacterString"/></notes_fra>
<catalog_type>Geo Data | G\xe9o</catalog_type>
<subject><xsl:value-of select="//gmd:identificationInfo/gmd:MD_DataIdentification/gmd:topicCategory/gmd:MD_TopicCategoryCode"/></subject>
<topic_category><xsl:value-of select="//gmd:identificationInfo/gmd:MD_DataIdentification/gmd:topicCategory/gmd:MD_TopicCategoryCode"/></topic_category>
<keywords><xsl:value-of select="//gmd:keyword/gco:CharacterString"/></keywords>
<keywords_fra><xsl:value-of select="//gmd:keyword/gmd:PT_FreeText/gmd:textGroup/gmd:LocalisedCharacterString"/></keywords_fra>
<license_id>ca-ogl-lgo</license_id>
<geographic_region><xsl:value-of select="//gmd:MD_KeywordTypeCode[@codeListValue='RI_525']"/></geographic_region>
<spatial><xsl:value-of select="//gml:Polygon/gml:exterior/gml:LinearRing/gml:pos"/></spatial>
<spatial_representation_type><xsl:value-of select="//gmd:MD_SpatialRepresentationTypeCode"/></spatial_representation_type>
<presentation_form><xsl:value-of select="//gmd:CI_PresentationFormCode"/></presentation_form>
<browse_graphic_url><xsl:value-of select="//gmd:MD_BrowseGraphic/gmd:fileName/gco:CharacterString"/></browse_graphic_url>
<date_published><xsl:value-of select="//gmd:CI_Date/gmd:date/gco:Date"/></date_published>
<date_modified></date_modified>
<maintenance_and_update_frequency><xsl:value-of select="//gmd:MD_MaintenanceFrequencyCode"/></maintenance_and_update_frequency>
<data_series_name><xsl:value-of select="//gmd:CI_Citation/gmd:series/gmd:CI_Series/gmd:name/gco:CharacterString"/></data_series_name>
<data_series_name_fra>
<xsl:value-of select="//gmd:CI_Citation/gmd:series/gmd:CI_Series/gmd:name/gmd:PT_FreeText/gmd:textGroup/gmd:LocalisedCharacterString"/>
</data_series_name_fra>
<data_series_issue_identification>
<xsl:value-of select="//gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:series/gmd:CI_Series/gmd:issueIdentification/gco:CharacterString"/>
</data_series_issue_identification>
<data_series_issue_identification_fra><xsl:value-of select="//gmd:keyword/gco:CharacterString"/></data_series_issue_identification_fra>
<digital_object_identifier><xsl:value-of select="//gmd:keyword/gmd:PT_FreeText/gmd:textGroup/gmd:LocalisedCharacterString"/></digital_object_identifier>
<time_period_coverage_start><xsl:value-of select="//gml:begin/gml:TimeInstant/gml:timePosition"/></time_period_coverage_start>
<time_period_coverage_end><xsl:value-of select="//gml:end/gml:TimeInstant/gml:timePosition"></xsl:value-of></time_period_coverage_end>
<url></url>
<url_fra></url_fra>
<endpoint_url></endpoint_url>
<endpoint_url_fra></endpoint_url_fra>
<ready_to_publish>True</ready_to_publish>
<portal_release_date>2013-06-18</portal_release_date>
<!-- RESOURCES -->
<resources>
<xsl:for-each select="//gmd:onLine">
	<resource>
        <name>Dataset</name>
        <name_fra>Données</name_fra>
        <resource_type>file</resource_type>
        <url><xsl:value-of select="gmd:CI_OnlineResource/gmd:linkage/gmd:URL"/></url>
        <size><xsl:value-of select="/gmd:name/gco:CharacterString"/></size>
        <format><xsl:value-of select="//gmd:MD_Format/gmd:name/gco:CharacterString"/></format>
        <language><xsl:value-of select="@xlink:role"/></language>
	</resource>
</xsl:for-each>
</resources>
</xml>