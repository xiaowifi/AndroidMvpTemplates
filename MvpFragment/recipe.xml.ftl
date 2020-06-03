<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
    <merge from="root/res/values/strings.xml" to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <#if includeLayout>
        <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>

    <instantiate from="root/src/app_package/BlankFragment.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.${ktOrJavaExt}" />
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
    <open file="${escapeXmlAttribute(srcOut)}/${className}.${ktOrJavaExt}" />
</recipe>
