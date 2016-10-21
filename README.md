# TamilFontConv
Different ways to convert between different Tamil font encodings

>I've been trying for some time to develop a lifestyle that doesn't require my presence. --Garry Trudeau

```
Guru's Tamil Font Conversion Work had these four distinct phases.
1. Some scripts in Autohotkey in Windows
	Conversion at the Input Level
	Different behaviours depending on the last entered keys
2. Some sed scripts
	From this stage on, conversion at the File Level : batch processing ... possible
	An enumeration of all the conversions that should be made in a certain order
	s/this/that/g
	~6s on a sample file
3. Conversion of sed scripts to awk script
	Order doesn't matter
	A hashmap of all conversions
	~3.7s on a sample file
4. Conversion of awk script to Haskell code
	Same hashmap idea, but the hashmap is constructed in the code
	Reliabilty of a compiled functional language
	Possibility of factoring common (font agnostic) functionality in a separate module
	Little speed improvement.
	~2.6s on a sample file
```

Usage:
	#with unicode2stmzh as an alias for TamilFontStmzhConv
```bash
	cat mytext.unicode | unicode2stmzh > mytext.stmzh
```


