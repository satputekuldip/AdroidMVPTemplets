<?xml version="1.0"?>
<recipe>
    
	<#if generateLayout>
		<#include "../common/recipe_simple.xml.ftl" />
		<open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
	</#if>

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    
    <instantiate from="root/src/app_package/View.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/${activityClass}MvpView.java" />

	<instantiate from="root/src/app_package/EmptyActivity.java.ftl"
				    to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

	<instantiate from="root/src/app_package/MvpPresenter.java.ftl"
				    to="${escapeXmlAttribute(srcOut)}/${activityClass}MvpPresenter.java" />

	<instantiate from="root/src/app_package/Presenter.java.ftl"
				    to="${escapeXmlAttribute(srcOut)}/${activityClass}Presenter.java" />

	<open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	<open file="${escapeXmlAttribute(srcOut)}/${activityClass}Presenter.java" />
</recipe>
