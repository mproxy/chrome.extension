
##
## chrome-extension
##

haxedoc.xml:
	haxe haxedoc.hxml

chrome-extension.zip: haxedoc.xml
	zip -r $@ chrome/ extraParameters.hxml haxedoc.xml haxelib.json README.md

install: chrome-extension.zip
	haxelib install chrome-extension.zip

uninstall: haxelib
	haxelib remove chrome-extension

clean:
	rm -f chrome-extension.zip haxedoc.xml

.PHONY: install uninstall clean