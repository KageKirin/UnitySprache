prepare: clone patch license readme

clone Assets/Scripts/Sprache/.git:
	git clone https://github.com/sprache/Sprache.git Assets/Scripts/Sprache/

patch:
	sed -i '1i using System;' Assets/Scripts/Sprache/src/Sprache/StringExtensions.cs
	sed -i '2i using System.Linq;' Assets/Scripts/Sprache/src/Sprache/StringExtensions.cs

license: clone
	cat Assets/Scripts/Sprache/licence.txt >> LICENSE.md

readme: clone
	cat Assets/Scripts/Sprache/README.md >> README.md

## publishing
publish:
	npm publish --access public
