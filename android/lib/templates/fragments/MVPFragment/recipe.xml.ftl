<?xml version="1.0"?>
<recipe>
   
    <merge from="root/res/values/strings.xml" to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
	
	<#if includeLayout>
        <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>
	
	
    
    <instantiate from="root/src/app_package/View.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/${className}MvpView.java" />

	<instantiate from="root/src/app_package/BlankFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.java" />
				   

	<instantiate from="root/src/app_package/MvpPresenter.java.ftl"
				    to="${escapeXmlAttribute(srcOut)}/${className}MvpPresenter.java" />

	<instantiate from="root/src/app_package/Presenter.java.ftl"
				    to="${escapeXmlAttribute(srcOut)}/${className}Presenter.java" />

	<open file="${escapeXmlAttribute(srcOut)}/${className}.java" />
	<open file="${escapeXmlAttribute(srcOut)}/${className}Presenter.java" />
</recipe>
