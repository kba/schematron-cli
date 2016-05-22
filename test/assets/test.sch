<?xml version="1.0" encoding="utf-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding='xslt2'>

    <phase id="default-phase">
        <active pattern="html-checks"/>
    </phase>

    <pattern id="html-checks">
        <title>Checking basic html structure</title>
        <rule context="html">
            <assert test="head">Must have 1 head</assert>
            <assert test="body">Must have 1 body</assert>
        </rule>
    </pattern>
    <pattern id="head-checks">
        <title>Checking basic html structure</title>
        <rule context="head">
            <assert test="meta[@name='ocr-id'][text()]">'ocr-id' must not be empty</assert>
            <assert test="meta[@name='ocr-recognized'][text()]">'ocr-recognized' must not be empty</assert>
        </rule>
    </pattern>
    <pattern id="body-checks">
        <rule context="body">
            <assert test="//*[@class='ocr_page'][text()]">At least one ocr_page</assert>
        </rule>
    </pattern>
    <pattern id="ocr_page checks">
        <rule context="//*[@class='ocr_page']">
            <assert test="@bbox" type="warn">At least one ocr_page</assert>
        </rule>
    </pattern>

</schema>
