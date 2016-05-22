<?xml version="1.0" encoding="utf-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding='xslt2'>

    <phase id="default-phase">
        <active pattern="html-checks"/>
    </phase>

    <pattern id="html-checks">
        <title>Checking basic html structure</title>
        <rule context="html">
            <report test="head">Must have 1 head</report>
            <assert test="head">Must have 1 head</assert>
            <report test="body">Must have 1 body</report>
            <assert test="body">Must have 1 body</assert>
        </rule>
    </pattern>

    <pattern id="head-checks">
        <title>Checking HTML metadata</title>
        <rule context="head">
            <report test="meta[@name='ocr-id'][text()]">'ocr-id' must not be empty</report>
            <report test="meta[@name='ocr-recognized'][text()]">'ocr-recognized' must not be empty</report>
        </rule>
    </pattern>

    <pattern id="body-checks">
        <rule context="body">
            <assert test="//*[@class='ocr_page'][text()]">At least one ocr_page</assert>
            <report test="//*[@class='ocr_page'][text()]">At least one ocr_page</report>
        </rule>
    </pattern>

    <pattern id="ocr_page checks">
        <rule context="//*[@class='ocr_page']">
            <assert test="@bbox">Must have 'bbox' attribute</assert>
        </rule>
    </pattern>

</schema>
