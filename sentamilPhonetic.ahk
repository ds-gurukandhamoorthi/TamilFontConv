StringCaseSense, On

;FIXME caps state

;FIXME sh
lastEntered:=""

::123::
SendInput {Raw}ð
return 


;FIXME letter q  
;FIXME letter h
;FIXME in case of other letter being pressed lastEntered must be null
:c*:a::
	if(lastEntered=="k"){
		SendInput {Backspace}
		;SendInput {asc 139}
		SendInput {asc 0239}
		lastEntered:="ka"
	}else if(lastEntered=="s"){
		SendInput {Backspace}
		;SendInput {asc 142}
		SendInput {asc 0196}
		lastEntered:="sa"
	}else if(lastEntered=="t"){
		SendInput {Backspace}
		SendInput {asc  0166}
		lastEntered:="ta"
	}else if(lastEntered=="th"){
		SendInput {Backspace}
		SendInput {asc  062}
		lastEntered:="tha"
	}else if(lastEntered=="p"){
		SendInput {Backspace}
		;SendInput {asc  226}
		SendInput {asc  0195}
		lastEntered:="pa"
	}else if(lastEntered=="R"){
		SendInput {Backspace}
		SendInput {asc  0197}
		lastEntered:="Ra"
	}else if(lastEntered=="y"){
		SendInput {Backspace}
		SendInput {asc  066}
		lastEntered:="ya"
	}else if(lastEntered=="r"){
		SendInput {Backspace}
		;SendInput {asc  174}
		SendInput {asc  0171}
		lastEntered:="ra"
	}else if(lastEntered=="L"){
		SendInput {Backspace}
		;SendInput {asc  210}
		SendInput {asc  0225}
		lastEntered:="La"
	}else if(lastEntered=="l"){
		SendInput {Backspace}
		;SendInput {asc  130}
		SendInput {asc  0233}
		lastEntered:="la"
	}else if(lastEntered=="v"){
		SendInput {Backspace}
		SendInput {asc  0107}
		lastEntered:="va"
	}else if(lastEntered=="zh"){
		SendInput {Backspace}
		SendInput {asc  0119}
		lastEntered:="zha"
	}else if(lastEntered=="n"){
		SendInput {Backspace}
		;SendInput {asc  166}
		SendInput {asc  0170}
		lastEntered:="na"
	}else if(lastEntered=="nj"){
		SendInput {Backspace}
		SendInput {asc  081}
		lastEntered:="nja"
	}else if(lastEntered=="ng"){
		SendInput {Backspace}
		SendInput {asc  0244}
		lastEntered:="nga"
	}else if(lastEntered=="N"){
		SendInput {Backspace}
		;SendInput {asc  227}
		SendInput {asc  0240}
		lastEntered:="Na"
	}else if(lastEntered=="w"){
		SendInput {Backspace}
		;SendInput {asc  134}
		SendInput {asc  0229}
		lastEntered:="wa"
	}else if(lastEntered=="m"){
		SendInput {Backspace}
		SendInput {asc  092}
		lastEntered:="ma"
	}else if(lastEntered=="j"){
		SendInput {Backspace}
		SendInput {asc  0219}
		lastEntered:="ja"
	}else if(lastEntered=="S"){
		SendInput {Backspace}
		;SendInput {asc  118}
		SendInput {asc  0118}
		lastEntered:="Sa"
	}else if(lastEntered=="h"){
		SendInput {Backspace}
		SendInput {asc  0199}
		lastEntered:="ha"
	}
	else{
		;SendInput {asc 20}
		SendInput {asc 0182}
		lastEntered:="a"
	}
return
:c*:A::
	if(lastEntered=="k"){
		SendInput {Backspace}
		SendInput {asc 139}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="s"){
		SendInput {Backspace}
		SendInput {asc 142}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="t"){
		SendInput {Backspace}
		SendInput {asc  0166}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="th"){
		SendInput {Backspace}
		SendInput {asc  062}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="p"){
		SendInput {Backspace}
		SendInput {asc  226}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="R"){
		SendInput {Backspace}
		SendInput {asc  0197}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="y"){
		SendInput {Backspace}
		SendInput {asc  66}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="r"){
		SendInput {Backspace}
		SendInput {asc  174}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="L"){
		SendInput {Backspace}
		SendInput {asc  210}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="l"){
		SendInput {Backspace}
		;SendInput {asc  130}
		SendInput {asc  0225}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="v"){
		SendInput {Backspace}
		SendInput {asc  107}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="zh"){
		SendInput {Backspace}
		SendInput {asc  119}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="nj"){
		SendInput {Backspace}
		SendInput {asc  081}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="ng"){
		SendInput {Backspace}
		SendInput {asc  0244}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="n"){
		SendInput {Backspace}
		SendInput {asc  166}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="N"){
		SendInput {Backspace}
		SendInput {asc  227}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="w"){
		SendInput {Backspace}
		SendInput {asc  134}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="m"){
		SendInput {Backspace}
		SendInput {asc  92}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="j"){
		SendInput {Backspace}
		SendInput {asc  0219}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="S"){
		SendInput {Backspace}
		SendInput {asc  0118}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="h"){
		SendInput {Backspace}
		SendInput {asc  0199}
		SendInput {asc 086}
		lastEntered:=""
	}	else{
		;SendInput {asc 103}
		SendInput {asc 0103}
		lastEntered:="A"
	}
return

:c*:i::
	if(lastEntered=="k"){
		SendInput {Backspace}
		SendInput {asc 0254}
		lastEntered:=""
	}else if(lastEntered=="s"){
		SendInput {Backspace}
		SendInput {asc 069}
		lastEntered:=""
	}else if(lastEntered=="t"){
		SendInput {Backspace}
		SendInput {asc  0189}
		lastEntered:=""
	}else if(lastEntered=="th"){
		SendInput {Backspace}
		SendInput {asc  093}
		lastEntered:=""
	}else if(lastEntered=="p"){
		SendInput {Backspace}
		SendInput {asc  0184}
		lastEntered:=""
	}else if(lastEntered=="R"){
		SendInput {Backspace}
		SendInput {asc  0164}
		lastEntered:=""
	}else if(lastEntered=="y"){
		SendInput {Backspace}
		SendInput {asc  0108}
		lastEntered:=""
	}else if(lastEntered=="r"){
		SendInput {Backspace}
		SendInput {asc  0246}
		lastEntered:=""
	}else if(lastEntered=="L"){
		SendInput {Backspace}
		SendInput {asc  0185}
		lastEntered:=""
	}else if(lastEntered=="l"){
		SendInput {Backspace}
		SendInput {asc  0111}
		lastEntered:=""
	}else if(lastEntered=="v"){
		SendInput {Backspace}
		SendInput {asc  0115}
		lastEntered:=""
	}else if(lastEntered=="zh"){
		SendInput {Backspace}
		SendInput {asc  097}
		lastEntered:=""
	}else if(lastEntered=="n"){
		SendInput {Backspace}
		SendInput {asc  077}
		lastEntered:=""
	}else if(lastEntered=="N"){
		SendInput {Backspace}
		SendInput {asc  0232}
		lastEntered:=""
	}else if(lastEntered=="w"){
		SendInput {Backspace}
		SendInput {asc  087}
		lastEntered:=""
	}else if(lastEntered=="m"){
		SendInput {Backspace}
		SendInput {asc  0116}
		lastEntered:=""
	}else if(lastEntered=="j"){
		SendInput {Backspace}
		SendInput {asc  0247}
		lastEntered:=""
	}else if(lastEntered=="S"){
		SendInput {Backspace}
		SendInput {asc  076}
		lastEntered:=""
	}else if(lastEntered=="h"){
		SendInput {Backspace}
		SendInput {asc  078}
		lastEntered:=""
	}else if(lastEntered=="a"){
		SendInput {Backspace}
		SendInput {asc 0110}
	}else if(lastEntered=="ka"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc 139}
		lastEntered:=""
	}else if(lastEntered=="sa"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc 142}
		lastEntered:=""
	}else if(lastEntered=="ta"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  0166}
		lastEntered:=""
	}else if(lastEntered=="tha"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  062}
		lastEntered:=""
	}else if(lastEntered=="pa"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  226}
		lastEntered:=""
	}else if(lastEntered=="Ra"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  0197}
		lastEntered:=""
	}else if(lastEntered=="ya"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  66}
		lastEntered:=""
	}else if(lastEntered=="ra"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  174}
		lastEntered:=""
	}else if(lastEntered=="La"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  210}
		lastEntered:=""
	}else if(lastEntered=="la"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  130}
		lastEntered:=""
	}else if(lastEntered=="va"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  107}
		lastEntered:=""
	}else if(lastEntered=="zha"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  119}
		lastEntered:=""
	}else if(lastEntered=="na"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  166}
		lastEntered:=""
	}else if(lastEntered=="Na"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  227}
		lastEntered:=""
	}else if(lastEntered=="wa"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  134}
		lastEntered:=""
	}else if(lastEntered=="ma"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  92}
		lastEntered:=""
	}else if(lastEntered=="ja"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  0219}
		lastEntered:=""
	}else if(lastEntered=="Sa"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  118}
		lastEntered:=""
	}else if(lastEntered=="ha"){
		SendInput {Backspace}
		SendInput {asc 0231}
		SendInput {asc  0199}
		lastEntered:=""
	}	else{
		;SendInput {asc 153}
		SendInput {asc 0214}
		lastEntered:="i"
	}
return
:c*:I::
	if(lastEntered=="k"){
		SendInput {Backspace}
		SendInput {asc 0255}
		lastEntered:=""
	}else if(lastEntered=="s"){
		SendInput {Backspace}
		SendInput {asc 0230}
		lastEntered:=""
	}else if(lastEntered=="t"){
		SendInput {Backspace}
		SendInput {asc  0207}
		lastEntered:=""
	}else if(lastEntered=="th"){
		SendInput {Backspace}
		SendInput {asc  0121}
		lastEntered:=""
	}else if(lastEntered=="p"){
		SendInput {Backspace}
		SendInput {asc  0172}
		lastEntered:=""
	}else if(lastEntered=="R"){
		SendInput {Backspace}
		SendInput {asc  083}
		lastEntered:=""
	}else if(lastEntered=="y"){
		SendInput {Backspace}
		SendInput {asc  088}
		lastEntered:=""
	}else if(lastEntered=="r"){
		SendInput {Backspace}
		SendInput {asc  090}
		lastEntered:=""
	}else if(lastEntered=="L"){
		SendInput {Backspace}
		SendInput {asc  067}
		lastEntered:=""
	}else if(lastEntered=="l"){
		SendInput {Backspace}
		SendInput {asc  0220}
		lastEntered:=""
	}else if(lastEntered=="v"){
		SendInput {Backspace}
		SendInput {asc  084}
		lastEntered:=""
	}else if(lastEntered=="zh"){
		SendInput {Backspace}
		SendInput {asc  0209}
		lastEntered:=""
	}else if(lastEntered=="n"){
		SendInput {Backspace}
		SendInput {asc  0204}
		lastEntered:=""
	}else if(lastEntered=="N"){
		SendInput {Backspace}
		SendInput {asc  0167}
		lastEntered:=""
	}else if(lastEntered=="w"){
		SendInput {Backspace}
		SendInput {asc  0192}
		lastEntered:=""
	}else if(lastEntered=="m"){
		SendInput {Backspace}
		SendInput {asc  042}
		lastEntered:=""
	}else if(lastEntered=="j"){
		SendInput {Backspace}
		SendInput {asc  0253}
		lastEntered:=""
	}else if(lastEntered=="S"){
		SendInput {Backspace}
		SendInput {asc  0162}
		lastEntered:=""
	}else if(lastEntered=="h"){
		SendInput {Backspace}
		SendInput {asc  0234}
		lastEntered:=""
	}else{
		SendInput {asc 0126}
		lastEntered:="I"
	}
return


;FIXME aU aI
:c*:u::
	if(lastEntered=="k"){
		SendInput {Backspace}
		SendInput {asc 0122}
		lastEntered:=""
	}else if(lastEntered=="s"){
		SendInput {Backspace}
		SendInput {asc 0183183}
		lastEntered:=""
	}else if(lastEntered=="t"){
		SendInput {Backspace}
		SendInput {asc  0124}
		lastEntered:=""
	}else if(lastEntered=="th"){
		SendInput {Backspace}
		SendInput {asc  0109}
		lastEntered:=""
	}else if(lastEntered=="p"){
		SendInput {Backspace}
		SendInput {asc  065}
		lastEntered:=""
	}else if(lastEntered=="R"){
		SendInput {Backspace}
		SendInput {asc  0174}
		lastEntered:=""
	}else if(lastEntered=="y"){
		SendInput {Backspace}
		SendInput {asc 0165}
		lastEntered:=""
	}else if(lastEntered=="r"){
		SendInput {Backspace}
		SendInput {asc  0242}
		lastEntered:=""
	}else if(lastEntered=="L"){
		SendInput {Backspace}
		SendInput {asc  0211}
		lastEntered:=""
	}else if(lastEntered=="l"){
		SendInput {Backspace}
		SendInput {asc  075}
		lastEntered:=""
	}else if(lastEntered=="v"){
		SendInput {Backspace}
		SendInput {asc  0161}
		lastEntered:=""
	}else if(lastEntered=="zh"){
		SendInput {Backspace}
		SendInput {asc  0191}
		lastEntered:=""
	}else if(lastEntered=="n"){
		SendInput {Backspace}
		SendInput {asc  0272}
		lastEntered:=""
	}else if(lastEntered=="N"){
		SendInput {Backspace}
		SendInput {asc  098}
		lastEntered:=""
	}else if(lastEntered=="w"){
		SendInput {Backspace}
		SendInput {asc  079}
		lastEntered:=""
	}else if(lastEntered=="m"){
		SendInput {Backspace}
		SendInput {asc  0120}
		lastEntered:=""
	}else if(lastEntered=="j"){
		SendInput {Backspace}
		SendInput {asc  0104}
		lastEntered:=""
	}else if(lastEntered=="S"){
		SendInput {Backspace}
		SendInput {asc  0113}
		lastEntered:=""
	}else if(lastEntered=="h"){
		SendInput {Backspace}
		SendInput {asc  0248}
		lastEntered:=""
	}else if(lastEntered="a"){
		SendInput {Backspace}
		SendInput {asc 0193}
	}else if(lastEntered=="ka"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc 139}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="sa"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc 142}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="ta"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0166}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="tha"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  062}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="pa"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  226}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="Ra"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0197}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="ya"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  66}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="ra"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  174}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="La"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  210}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="la"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  130}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="va"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  107}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="zha"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  119}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="na"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  166}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="Na"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  227}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="wa"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  134}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="ma"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  92}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="ja"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0219}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="Sa"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc 0118}
		SendInput {asc 0101}
		lastEntered:=""
	}else if(lastEntered=="ha"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc 0199}
		SendInput {asc 0101}
		lastEntered:=""
	}
	else{
		SendInput {asc 185}
		lastEntered:="u"
	}
return
:c*:U::
	if(lastEntered=="k"){
		SendInput {Backspace}
		SendInput {asc 0237}
		lastEntered:=""
	}else if(lastEntered=="s"){
		SendInput {Backspace}
		SendInput {asc 0243}
		lastEntered:=""
	}else if(lastEntered=="t"){
		SendInput {Backspace}
		SendInput {asc  0249}
		lastEntered:=""
	}else if(lastEntered=="th"){
		SendInput {Backspace}
		SendInput {asc  035}
		lastEntered:=""
	}else if(lastEntered=="p"){
		SendInput {Backspace}
		SendInput {asc  0175}
		lastEntered:=""
	}else if(lastEntered=="R"){
		SendInput {Backspace}
		SendInput {asc  071}
		lastEntered:=""
	}else if(lastEntered=="y"){
		SendInput {Backspace}
		SendInput {asc  082}
		lastEntered:=""
	}else if(lastEntered=="r"){
		SendInput {Backspace}
		SendInput {asc  0212}
		lastEntered:=""
	}else if(lastEntered=="L"){
		SendInput {Backspace}
		SendInput {asc  0106}
		lastEntered:=""
	}else if(lastEntered=="l"){
		SendInput {Backspace}
		SendInput {asc  0217}
		lastEntered:=""
	}else if(lastEntered=="v"){
		SendInput {Backspace}
		SendInput {asc  0198}
		lastEntered:=""
	}else if(lastEntered=="zh"){
		SendInput {Backspace}
		SendInput {asc  0241}
		lastEntered:=""
	}else if(lastEntered=="n"){
		SendInput {Backspace}
		SendInput {asc  0251}
		lastEntered:=""
	}else if(lastEntered=="N"){
		SendInput {Backspace}
		SendInput {asc  073}
		lastEntered:=""
	}else if(lastEntered=="w"){
		SendInput {Backspace}
		SendInput {asc  0177}
		lastEntered:=""
	}else if(lastEntered=="m"){
		SendInput {Backspace}
		SendInput {asc  074}
		lastEntered:=""
	}else if(lastEntered=="j"){
		SendInput {Backspace}
		SendInput {asc  0201}
		lastEntered:=""
	}else if(lastEntered=="S"){
		SendInput {Backspace}
		SendInput {asc  096}
		lastEntered:=""
	}else if(lastEntered=="h"){
		SendInput {Backspace}
		SendInput {asc  0218}
		lastEntered:=""
	}else {
		;SendInput {asc 175}
		SendInput {asc 0187}
		lastEntered:="U"
	}
return

:c*:e::
	if(lastEntered=="k"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc 139}
		lastEntered:=""
	}else if(lastEntered=="s"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc 142}
		lastEntered:=""
	}else if(lastEntered=="t"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0166}
		lastEntered:=""
	}else if(lastEntered=="th"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  062}
		lastEntered:=""
	}else if(lastEntered=="p"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  226}
		lastEntered:=""
	}else if(lastEntered=="R"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0197}
		lastEntered:=""
	}else if(lastEntered=="y"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  66}
		lastEntered:=""
	}else if(lastEntered=="r"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  174}
		lastEntered:=""
	}else if(lastEntered=="L"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  210}
		lastEntered:=""
	}else if(lastEntered=="l"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  130}
		lastEntered:=""
	}else if(lastEntered=="v"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  107}
		lastEntered:=""
	}else if(lastEntered=="zh"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  119}
		lastEntered:=""
	}else if(lastEntered=="nj"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  081}
		lastEntered:="na"
	}else if(lastEntered=="ng"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0244}
		lastEntered:="na"
	}else if(lastEntered=="n"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  166}
		lastEntered:=""
	}else if(lastEntered=="N"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  227}
		lastEntered:=""
	}else if(lastEntered=="w"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  134}
		lastEntered:=""
	}else if(lastEntered=="m"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  92}
		lastEntered:=""
	}else if(lastEntered=="j"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0219}
		lastEntered:=""
	}else if(lastEntered=="S"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0118}
		lastEntered:=""
	}else if(lastEntered=="h"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0199}
		lastEntered:=""
	}	else{
		;SendInput {asc 23}
		SendInput {asc 0168}
		lastEntered:="e"
	}
return
:c*:E::
	if(lastEntered=="k"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc 139}
		lastEntered:=""
	}else if(lastEntered=="s"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc 142}
		lastEntered:=""
	}else if(lastEntered=="t"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  0166}
		lastEntered:=""
	}else if(lastEntered=="th"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  062}
		lastEntered:=""
	}else if(lastEntered=="p"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  226}
		lastEntered:=""
	}else if(lastEntered=="R"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  0197}
		lastEntered:=""
	}else if(lastEntered=="y"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  66}
		lastEntered:=""
	}else if(lastEntered=="r"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  174}
		lastEntered:=""
	}else if(lastEntered=="L"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  210}
		lastEntered:=""
	}else if(lastEntered=="l"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  130}
		lastEntered:=""
	}else if(lastEntered=="v"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  107}
		lastEntered:=""
	}else if(lastEntered=="zh"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  119}
		lastEntered:=""
	}else if(lastEntered=="nj"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  081}
		lastEntered:="na"
	}else if(lastEntered=="ng"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  0244}
		lastEntered:="na"
	}else if(lastEntered=="n"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  166}
		lastEntered:=""
	}else if(lastEntered=="N"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  227}
		lastEntered:=""
	}else if(lastEntered=="w"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  134}
		lastEntered:=""
	}else if(lastEntered=="m"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  92}
		lastEntered:=""
	}else if(lastEntered=="j"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  0219}
		lastEntered:=""
	}else if(lastEntered=="S"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  0118}
		lastEntered:=""
	}else if(lastEntered=="h"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  0199}
		lastEntered:=""
	}	else{
		;SendInput {asc 248}
		SendInput {asc 0178}
		lastEntered:="E"
	}
return

:c*:o::
	if(lastEntered=="k"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc 139}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="s"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc 142}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="t"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0166}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="th"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  062}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="p"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  226}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="R"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0197}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="y"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  66}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="r"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  174}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="L"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  210}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="l"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  130}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="v"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  107}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="zh"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  119}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="nj"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  081}
		SendInput {asc 086}
		lastEntered:="na"
	}else if(lastEntered=="ng"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0244}
		SendInput {asc 086}
		lastEntered:="na"
	}else if(lastEntered=="n"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  166}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="N"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  227}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="w"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  134}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="m"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  92}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="j"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0219}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="S"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0118}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="h"){
		SendInput {Backspace}
		SendInput {asc 0216}
		SendInput {asc  0199}
		SendInput {asc 086}
		lastEntered:=""
	}	else{
		SendInput {asc 0206}
		lastEntered:="o"
	}
return
:c*:O::
	if(lastEntered=="k"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc 139}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="s"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc 142}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="t"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  0166}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="th"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  062}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="p"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  226}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="R"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  0197}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="y"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  66}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="r"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  174}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="L"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  210}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="l"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  130}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="v"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  107}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="zh"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  119}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="nj"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  081}
		SendInput {asc 086}
		lastEntered:="na"
	}else if(lastEntered=="ng"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  0244}
		SendInput {asc 086}
		lastEntered:="na"
	}else if(lastEntered=="n"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  166}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="N"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  227}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="w"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  134}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="m"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  92}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="j"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  0219}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="S"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  118}
		SendInput {asc 086}
		lastEntered:=""
	}else if(lastEntered=="h"){
		SendInput {Backspace}
		SendInput {asc 0188}
		SendInput {asc  0199}
		SendInput {asc 086}
		lastEntered:=""
	}	else{
		SendInput {asc 123}
		lastEntered:="O"
	}
return


;FIXME
;nj

;FIXME
;ng
;tha


:c*:k::
	SendInput {asc 0194}
	lastEntered:="k"
return
:c*:s::
	;SendInput {asc 225}
	SendInput {asc 0223}
	lastEntered:="s"
return
:c*:d::
:c*:t::
	;SendInput {asc 131}
	SendInput {asc 0226}
	lastEntered:="t"
return
:c*:p::
	SendInput {asc 0169}
	lastEntered:="p"
return
:c*:R::
	SendInput {asc 0117}
	lastEntered:="R"
return

:c*:y::
	;SendInput {asc 70}
	SendInput {asc 070}
	lastEntered:="y"
return
:c*:r::
	;SendInput {asc 141}
	SendInput {asc 0250}
	lastEntered:="r"
return
:c*:L::
	;SendInput {asc 198}
	SendInput {asc 094}
	lastEntered:="L"
return
:c*:v::
	;SendInput {asc 278}
	SendInput {asc 0203}
	lastEntered:="v"
return

;FIXME KSH 0213  H 0227

;FIXME map z to S (as in bus)

:c*:l::
	;SendInput {asc 199}
	SendInput {asc  095}
	lastEntered:="l"
return

:c*:n::
	;SendInput {asc 190}
	SendInput {asc 091}
	lastEntered:="n"
return
:c*:N::
	SendInput {asc 0245}
	lastEntered:="N"
return
:c*:w::
	SendInput {asc 0205}
	lastEntered:="w"
return
:c*:m::
	;SendInput {asc 68}
	SendInput {asc 068}
	lastEntered:="m"
return

:c*:q::
	;SendInput {asc 68}
	SendInput {asc 0224}
	lastEntered:="q"
return

:c*:g::
	if(lastEntered=="n"){
		SendInput {Backspace}
		SendInput {asc  0186}
		lastEntered:="ng"
	}else {
		SendInput {asc 0194}
		lastEntered:="k"
	}
	;SendInput {asc 137}

return

:c*:j::
	if(lastEntered=="n"){
		SendInput {Backspace}
		SendInput {asc  0222}
		lastEntered:="nj"
	}else {
		SendInput {asc 0235}
		lastEntered:="j"
	}
	;SendInput {asc 137}

return

:c*:S::
	SendInput {asc 0252}
	lastEntered:="S"
return
:c*:z::
	;SendInput {asc 230}
	SendInput {asc  0252}
	lastEntered:="z"
return

:c*:h::
	;SendInput {asc 230}
	if(lastEntered=="z"){
		SendInput {Backspace}
		SendInput {asc 0181}
		lastEntered:="zh"
	}else if(lastEntered=="t"){
		SendInput {Backspace}
		SendInput {asc 0221}
		lastEntered:="th"
	}	else{
		SendInput {asc 0227}
		lastEntered:="h"
	}
return
