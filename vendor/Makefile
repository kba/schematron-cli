CP = cp -rv
MKDIR = mkdir -p
RM = rm -rfv
UNZIP = unzip -u
WGET = wget
GIT_CLONE = git clone --depth 1

SAXON_HE_VERSION_MAJOR = 9
SAXON_HE_VERSION_MINOR = 7
SAXON_HE_VERSION_PATCH = 0-4J
SAXON_HE_ZIP = SaxonHE$(SAXON_HE_VERSION_MAJOR)-$(SAXON_HE_VERSION_MINOR)-$(SAXON_HE_VERSION_PATCH).zip
SAXON_HE_URL = https://sourceforge.net/projects/saxon/files/Saxon-HE/$(SAXON_HE_VERSION_MAJOR).$(SAXON_HE_VERSION_MINOR)/$(SAXON_HE_ZIP)/download
SAXON_HE_JAR = saxon9he.jar

SCHEMATRON_1 = iso-schematron-xslt1
SCHEMATRON_2 = iso-schematron-xslt2
SCHEMATRON_BASEURL = http://www.schematron.com/tmp/

.PHONY: all check $(PAGE_SCHEMA_REPO) $(ABBYY_SCHEMA_REPO)

all:\
	$(SCHEMATRON_1)\
	$(SCHEMATRON_2)\
	$(SAXON_HE_JAR)

clean:
	$(RM) $(SAXON_HE_JAR)
	$(RM) $(SAXON_HE_ZIP)

$(SCHEMATRON_1) $(SCHEMATRON_2):
	$(MAKE) $@.zip
	$(MKDIR) $@
	cd $@ && mv ../$@.zip . && $(UNZIP) $@.zip

$(SCHEMATRON_1).zip $(SCHEMATRON_2).zip:
	$(WGET) $(SCHEMATRON_BASEURL)$@

$(SAXON_HE_JAR):
	$(MAKE) $(SAXON_HE_ZIP)
	$(UNZIP) "$(SAXON_HE_ZIP)" "$@"

$(SAXON_HE_ZIP):
	$(WGET) -O "$@" "$(SAXON_HE_URL)"
