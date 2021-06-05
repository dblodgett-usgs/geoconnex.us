<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" fpi="http://schemas.opengis.net/sensorML/2.1/physical_component.sch" queryBinding="xslt2">
    <!-- 
        SensorML is an OGC Standard.
        Copyright (c) 2019 Open Geospatial Consortium.
        To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .
    -->
    <!-- Version: 2.1.0 -->
    <sch:title>Additional validation rules for XML instances including Physical Process components</sch:title>
    <sch:ns uri="http://www.opengis.net/sensorML/2.1" prefix="sml"/>
    <sch:ns uri="http://www.opengis.net/swe/2.0" prefix="swe"/>
    <sch:ns uri="http://www.opengis.net/gml/2.0" prefix="swe"/>
    <sch:ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
    
    <!-- gml:identifier -->
    <sch:pattern>
        <sch:title>Req 46</sch:title>
        <sch:rule context="sml:PhysicalComponent">
            <sch:assert test="count(gml:identifier) = 1">
                There shall be one and only one "gml:identifier" for any PhysicalComponent. (Req 46)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Req 46</sch:title>
        <sch:rule context="sml:PhysicalComponent/gml:identifier">
             <sch:assert test="@codeSpace = 'uniqueID' ">
                The value of the "codespace" attribute of a "gml:identifier" must be "uniqueID". (Req 46)
            </sch:assert>
        </sch:rule>
	</sch:pattern>
	
    <!-- component property -->
    <sch:pattern>
        <sch:title>Req 59</sch:title>
        <sch:rule context="sml:component">
            <sch:assert test="@xlink:href">
                The "xlink:href" attribute is required for the "component" property. (Req 59)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Req 59</sch:title>
        <sch:rule context="sml:component">
            <sch:assert test="@xlink:title">
                The "xlink:title" attribute is required for the "component" property. (Req 59)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <!-- attachedTo property -->
    <sch:pattern>
        <sch:title>Req 68</sch:title>
        <sch:rule context="sml:attachedTo">
            <sch:assert test="@xlink:title">
                The "xlink:title" attribute is required for the "attachedTo" property. (Req 68)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Req 68</sch:title>
        <sch:rule context="sml:attachedTo">
            <sch:assert test="@xlink:href">
                The "xlink:href" attribute is required for the "attachedTo" property. (Req 68)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <!-- position taking DataRecord -->
    <sch:pattern>
        <sch:title>Req 69</sch:title>
        <sch:rule context="sml:position/swe:DataRecord">
            <sch:assert test="count(swe:field) = 2" >
                When the "position" element takes a "DataRecord", the DataRecord shall consist of two "field" elements. (Req 69)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Req 69</sch:title>
        <sch:rule context="sml:position/swe:DataRecord/swe:field">
            <sch:assert test="swe:Vector">
                When the "position" element takes a "DataRecord", the DataRecord "field" element shall be of type "swe:Vector". (Req 69)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <!-- position taking DataArray -->
    <!-- DataArray should take a time field -->
    
    
</sch:schema>
