Schematron CLI
==============
Command-line interface to schematron validation.

[![Build Status](https://travis-ci.org/kba/schematron-cli.svg?branch=master)](https://travis-ci.org/kba/schematron-cli)

## Usage

```
schematron [options] <schema.sch> [<input.xml>...]

    Options:
        --debug    -d                Show what's happening
        --help     -h                Show this help
        --xslt-version <1|2>         Schematron version to use. Default: 2
        --xslt-out <compiled.xsl>    Filename of the compiled XSLT. Default: temp file
        --report-suffix 'xyz.xml'    Filename suffix of the SVRL report. Default: '.report.xml'
        --formatter <formatter.xsl>  XSLT to run on the produced SVRL report.
        --tap                        Produces TAP (Test Anything Protocol) output.

    Arguments:
        <schema.sch>    The schematron file
        <valid.xml>     The XML files to validate
```

## Acknowledgements

* [Saxon HE 9.7](http://saxon.sourceforge.net/#F9.7HE), `MPL`
* [Schematron skeleton files](http://schematron.com), `BSD`
* Roger L. Costello: [The awesome power of Schematron + XPath 2.0](http://www.xfront.com/awesome-power-of-schematron-plus-xpath2/)
