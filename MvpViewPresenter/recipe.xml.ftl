<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#--    创建view-->
    <#if ismvpView>
        <instantiate from="root/src/app_package/BaseView.${ktOrJavaExt}.ftl"
                     to="${escapeXmlAttribute(srcOut)}/${mvpView}.${ktOrJavaExt}" />
    </#if>
    <#--    创建presenter-->
    <instantiate from="root/src/app_package/MvpPresenter.java.ftl"
                     to="${escapeXmlAttribute(srcOut)}/${mvpPresenter}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${mvpPresenter}.${ktOrJavaExt}" />
</recipe>
