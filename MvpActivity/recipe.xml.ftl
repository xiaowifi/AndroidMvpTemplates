<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
<#--往清单文件中注册activity-->
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />
<#--创建layout-->
<#if generateLayout || (includeCppSupport!false)>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

<#if includeCppSupport!false>
    <instantiate from="root/src/app_package/EmptyActivityWithCppSupport.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />

    <mkdir at="${escapeXmlAttribute(nativeSrcOut)}" />

    <instantiate from="root/src/app_package/native-lib.cpp.ftl"
                   to="${escapeXmlAttribute(nativeSrcOut)}/native-lib.cpp" />
<#else>
    <instantiate from="root/src/app_package/EmptyActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />
</#if>
<#--    创建view-->
    <#if ismvpView>
        <instantiate from="root/src/app_package/BaseView.${ktOrJavaExt}.ftl"
                     to="${escapeXmlAttribute(srcOut)}/${mvpView}.${ktOrJavaExt}" />
    </#if>
<#--    创建presenter-->
    <#if ismvpPresenter >
        <instantiate from="root/src/app_package/MvpPresenter.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${mvpPresenter}.${ktOrJavaExt}" />
    </#if>

<#--    打开一个创建的class-->
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />
</recipe>
