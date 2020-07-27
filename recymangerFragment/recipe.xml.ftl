<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
<#--    创建xml-->
    <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layout_name)}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layout_name)}.xml" />
<#--    创建fragment-->
    <instantiate from="root/src/app_package/BaseFragment.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${fragment_name}.${ktOrJavaExt}" />
<#--    创建manger-->
    <instantiate from="root/src/app_package/BaseManger.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${manger_name}.${ktOrJavaExt}" />
</recipe>
