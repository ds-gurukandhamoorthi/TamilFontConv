StringCaseSense, On

;FIXME caps state

lastEntered:=""

::123::
SendInput {Raw}ğ
return 


;FIXME letter q  
;FIXME letter h
;FIXME in case of other letter being pressed lastEntered must be null




;FIXME
;nj

;FIXME
;ng
;tha

:c*:D::
	;SendInput {asc 225}
	SendInput {asc 0182}
	lastEntered:="a"	
return
:c*:d::
	if(lastEntered=="ka"){
		SendInput {Backspace}
		;SendInput {asc 139}
		SendInput {asc 0194}
		lastEntered:=""
	}else if(lastEntered=="sa"){
		SendInput {Backspace}
		;SendInput {asc 142}
		SendInput {asc 0223}
		lastEntered:=""
	}else if(lastEntered=="ta"){
		SendInput {Backspace}
		SendInput {asc  0226}
		lastEntered:=""
	}else if(lastEntered=="tha"){
		SendInput {Backspace}
		SendInput {asc  0221}
		lastEntered:=""
	}else if(lastEntered=="pa"){
		SendInput {Backspace}
		;SendInput {asc  226}
		SendInput {asc  0169}
		lastEntered:=""
	}else if(lastEntered=="Ra"){
		SendInput {Backspace}
		SendInput {asc  0117}
		lastEntered:=""
	}else if(lastEntered=="ya"){
		SendInput {Backspace}
		SendInput {asc  070}
		lastEntered:=""
	}else if(lastEntered=="ra"){
		SendInput {Backspace}
		;SendInput {asc  174}
		SendInput {asc  0250}
		lastEntered:=""
	}else if(lastEntered=="La"){
		SendInput {Backspace}
		;SendInput {asc  210}
		SendInput {asc  094}
		lastEntered:=""
	}else if(lastEntered=="la"){
		SendInput {Backspace}
		;SendInput {asc  130}
		SendInput {asc  095}
		lastEntered:=""
	}else if(lastEntered=="va"){
		SendInput {Backspace}
		SendInput {asc  0203}
		lastEntered:=""
	}else if(lastEntered=="zha"){
		SendInput {Backspace}
		SendInput {asc  0181}
		lastEntered:=""
	}else if(lastEntered=="na"){
		SendInput {Backspace}
		;SendInput {asc  166}
		SendInput {asc  091}
		lastEntered:=""
	}else if(lastEntered=="nja"){
		SendInput {Backspace}
		SendInput {asc  0222}
		lastEntered:=""
	}else if(lastEntered=="nga"){
		SendInput {Backspace}
		SendInput {asc  0186}
		lastEntered:=""
	}else if(lastEntered=="Na"){
		SendInput {Backspace}
		;SendInput {asc  227}
		SendInput {asc  0245}
		lastEntered:=""
	}else if(lastEntered=="wa"){
		SendInput {Backspace}
		;SendInput {asc  134}
		SendInput {asc  0205}
		lastEntered:=""
	}else if(lastEntered=="ma"){
		SendInput {Backspace}
		SendInput {asc  068}
		lastEntered:=""
	}else if(lastEntered=="ja"){
		SendInput {Backspace}
		SendInput {asc  0235}
		lastEntered:=""
	}else if(lastEntered=="Sa"){
		SendInput {Backspace}
		;SendInput {asc  118}
		SendInput {asc  0252}
		lastEntered:=""
	}else if(lastEntered=="ha"){
		SendInput {Backspace}
		SendInput {asc  0227}
		lastEntered:=""
	}else if(lastEntered=="sha"){
		SendInput {Backspace}
		SendInput {asc  0105}
		lastEntered:=""
	}
	else{
		;SendInput {asc 20}
		;SendInput {asc 0182}
		lastEntered:=""
	}
return
:c*:E::
	;SendInput {asc 225}
	SendInput {asc 0103}
	lastEntered:="a"	
return
:c*:e::
	if(lastEntered=="ka"
		or lastEntered=="sa"
		or lastEntered=="ta"
		or lastEntered=="tha"
		or lastEntered=="pa"
		or lastEntered=="Ra"
		or lastEntered=="ya"
		or lastEntered=="ra"
		or lastEntered=="La"
		or lastEntered=="la"
		or lastEntered=="va"
		or lastEntered=="zha"
		or lastEntered=="na"
		or lastEntered=="nja"
		or lastEntered=="nga"
		or lastEntered=="Na"
		or lastEntered=="wa"
		or lastEntered=="ma"
		or lastEntered=="ja"
		or lastEntered=="Sa"
		or lastEntered=="sha"
		or lastEntered=="ha"){
		SendInput {asc 086}
		lastEntered:=""
	}
	else{
		;SendInput {asc 20}
		;SendInput {asc 0182}
		lastEntered:=""
	}
return
:c*:F::
	;SendInput {asc 225}
	SendInput {asc 0214}
	lastEntered:="i"	
return
:c*:f::
	if(lastEntered=="ka"){
		SendInput {Backspace}
		;SendInput {asc 139}
		SendInput {asc 0254}
		lastEntered:=""
	}else if(lastEntered=="sa"){
		SendInput {Backspace}
		;SendInput {asc 142}
		SendInput {asc 069}
		lastEntered:=""
	}else if(lastEntered=="ta"){
		SendInput {Backspace}
		SendInput {asc  0189}
		lastEntered:=""
	}else if(lastEntered=="tha"){
		SendInput {Backspace}
		SendInput {asc  093}
		lastEntered:=""
	}else if(lastEntered=="pa"){
		SendInput {Backspace}
		;SendInput {asc  226}
		SendInput {asc  0184}
		lastEntered:=""
	}else if(lastEntered=="Ra"){
		SendInput {Backspace}
		SendInput {asc  0164}
		lastEntered:=""
	}else if(lastEntered=="ya"){
		SendInput {Backspace}
		SendInput {asc  0108}
		lastEntered:=""
	}else if(lastEntered=="ra"){
		SendInput {Backspace}
		;SendInput {asc  174}
		SendInput {asc  0246}
		lastEntered:=""
	}else if(lastEntered=="La"){
		SendInput {Backspace}
		;SendInput {asc  210}
		SendInput {asc  0185}
		lastEntered:=""
	}else if(lastEntered=="la"){
		SendInput {Backspace}
		;SendInput {asc  130}
		SendInput {asc  0111}
		lastEntered:=""
	}else if(lastEntered=="va"){
		SendInput {Backspace}
		SendInput {asc  0115}
		lastEntered:=""
	}else if(lastEntered=="zha"){
		SendInput {Backspace}
		SendInput {asc  097}
		lastEntered:=""
	}else if(lastEntered=="na"){
		SendInput {Backspace}
		;SendInput {asc  166}
		SendInput {asc  077}
		lastEntered:=""
	}else if(lastEntered=="Na"){
		SendInput {Backspace}
		;SendInput {asc  227}
		SendInput {asc  0232}
		lastEntered:=""
	}else if(lastEntered=="wa"){
		SendInput {Backspace}
		;SendInput {asc  134}
		SendInput {asc  087}
		lastEntered:=""
	}else if(lastEntered=="ma"){
		SendInput {Backspace}
		SendInput {asc  0116}
		lastEntered:=""
	}else if(lastEntered=="ja"){
		SendInput {Backspace}
		SendInput {asc  0247}
		lastEntered:=""
	}else if(lastEntered=="Sa"){
		SendInput {Backspace}
		;SendInput {asc  118}
		SendInput {asc  076}
		lastEntered:=""
	}else if(lastEntered=="ha"){
		SendInput {Backspace}
		SendInput {asc  078}
		lastEntered:=""
	}else if(lastEntered=="sha"){
		SendInput {Backspace}
		SendInput {asc  0180}
		lastEntered:=""
	}
	else{
		;SendInput {asc 20}
		;SendInput {asc 0182}
		lastEntered:=""
	}
return
:c*:R::
	;SendInput {asc 225}
	SendInput {asc 0126}
	lastEntered:="I"	
return
:c*:r::
	if(lastEntered=="ka"){
		SendInput {Backspace}
		;SendInput {asc 139}
		SendInput {asc 0255}
		lastEntered:=""
	}else if(lastEntered=="sa"){
		SendInput {Backspace}
		;SendInput {asc 142}
		SendInput {asc 0230}
		lastEntered:=""
	}else if(lastEntered=="ta"){
		SendInput {Backspace}
		SendInput {asc  0207}
		lastEntered:=""
	}else if(lastEntered=="tha"){
		SendInput {Backspace}
		SendInput {asc  0121}
		lastEntered:=""
	}else if(lastEntered=="pa"){
		SendInput {Backspace}
		;SendInput {asc  226}
		SendInput {asc  0172}
		lastEntered:=""
	}else if(lastEntered=="Ra"){
		SendInput {Backspace}
		SendInput {asc  083}
		lastEntered:=""
	}else if(lastEntered=="ya"){
		SendInput {Backspace}
		SendInput {asc  088}
		lastEntered:=""
	}else if(lastEntered=="ra"){
		SendInput {Backspace}
		;SendInput {asc  174}
		SendInput {asc  090}
		lastEntered:=""
	}else if(lastEntered=="La"){
		SendInput {Backspace}
		;SendInput {asc  210}
		SendInput {asc  067}
		lastEntered:=""
	}else if(lastEntered=="la"){
		SendInput {Backspace}
		;SendInput {asc  130}
		SendInput {asc  0220}
		lastEntered:=""
	}else if(lastEntered=="va"){
		SendInput {Backspace}
		SendInput {asc  084}
		lastEntered:=""
	}else if(lastEntered=="zha"){
		SendInput {Backspace}
		SendInput {asc  0209}
		lastEntered:=""
	}else if(lastEntered=="na"){
		SendInput {Backspace}
		;SendInput {asc  166}
		SendInput {asc  0204}
		lastEntered:=""
	}else if(lastEntered=="Na"){
		SendInput {Backspace}
		;SendInput {asc  227}
		SendInput {asc  0167}
		lastEntered:=""
	}else if(lastEntered=="wa"){
		SendInput {Backspace}
		;SendInput {asc  134}
		SendInput {asc  0192}
		lastEntered:=""
	}else if(lastEntered=="ma"){
		SendInput {Backspace}
		SendInput {asc  042}
		lastEntered:=""
	}else if(lastEntered=="ja"){
		SendInput {Backspace}
		SendInput {asc  0253}
		lastEntered:=""
	}else if(lastEntered=="Sa"){
		SendInput {Backspace}
		;SendInput {asc  118}
		SendInput {asc  0162}
		lastEntered:=""
	}else if(lastEntered=="ha"){
		SendInput {Backspace}
		SendInput {asc  0234}
		lastEntered:=""
	}else if(lastEntered=="sha"){
		SendInput {Backspace}
		SendInput {asc  085}
		lastEntered:=""
	}
	else{
		;SendInput {asc 20}
		;SendInput {asc 0182}
		lastEntered:=""
	}
return
:c*:Z::
	;SendInput {asc 225}
	SendInput {asc 0168}
	lastEntered:="e"	
return
:c*:z::
	if(lastEntered=="ka"
		or lastEntered=="sa"
		or lastEntered=="ta"
		or lastEntered=="tha"
		or lastEntered=="pa"
		or lastEntered=="Ra"
		or lastEntered=="ya"
		or lastEntered=="ra"
		or lastEntered=="La"
		or lastEntered=="la"
		or lastEntered=="va"
		or lastEntered=="zha"
		or lastEntered=="na"
		or lastEntered=="nja"
		or lastEntered=="nga"
		or lastEntered=="Na"
		or lastEntered=="wa"
		or lastEntered=="ma"
		or lastEntered=="ja"
		or lastEntered=="Sa"
		or lastEntered=="sha"
		or lastEntered=="ha"){
		SendInput {Left}
		SendInput {asc 0216}
		SendInput {Right}
		lastEntered:=""
	}
	else{
		;SendInput {asc 20}
		;SendInput {asc 0182}
		lastEntered:=""
	}
return
:c*:S::
	;SendInput {asc 225}
	SendInput {asc 0178}
	lastEntered:="E"	
return
:c*:s::
	if(lastEntered=="ka"
		or lastEntered=="sa"
		or lastEntered=="ta"
		or lastEntered=="tha"
		or lastEntered=="pa"
		or lastEntered=="Ra"
		or lastEntered=="ya"
		or lastEntered=="ra"
		or lastEntered=="La"
		or lastEntered=="la"
		or lastEntered=="va"
		or lastEntered=="zha"
		or lastEntered=="na"
		or lastEntered=="nja"
		or lastEntered=="nga"
		or lastEntered=="Na"
		or lastEntered=="wa"
		or lastEntered=="ma"
		or lastEntered=="ja"
		or lastEntered=="Sa"
		or lastEntered=="sha"
		or lastEntered=="ha"){
		SendInput {Left}
		SendInput {asc 0188}
		SendInput {Right}
		lastEntered:=""
	}
	else{
		;SendInput {asc 20}
		;SendInput {asc 0182}
		lastEntered:=""
	}
return

:c*:~::
	;SendInput {asc 225}
	SendInput {asc 0206}
	lastEntered:="o"	
return
:c*:``::
	if(lastEntered=="ka"
		or lastEntered=="sa"
		or lastEntered=="ta"
		or lastEntered=="tha"
		or lastEntered=="pa"
		or lastEntered=="Ra"
		or lastEntered=="ya"
		or lastEntered=="ra"
		or lastEntered=="La"
		or lastEntered=="la"
		or lastEntered=="va"
		or lastEntered=="zha"
		or lastEntered=="na"
		or lastEntered=="nja"
		or lastEntered=="nga"
		or lastEntered=="Na"
		or lastEntered=="wa"
		or lastEntered=="ma"
		or lastEntered=="ja"
		or lastEntered=="Sa"
		or lastEntered=="sha"
		or lastEntered=="ha"){
		SendInput {Left}
		SendInput {asc 0216}
		SendInput {Right}
		SendInput {asc 086}
		lastEntered:=""
	}
	else{
		;SendInput {asc 20}
		;SendInput {asc 0182}
		lastEntered:=""
	}
return
:c*:A::
	;SendInput {asc 225}
	SendInput {asc 0178}
	lastEntered:="O"	
return
:c*:a::
	if(lastEntered=="ka"
		or lastEntered=="sa"
		or lastEntered=="ta"
		or lastEntered=="tha"
		or lastEntered=="pa"
		or lastEntered=="Ra"
		or lastEntered=="ya"
		or lastEntered=="ra"
		or lastEntered=="La"
		or lastEntered=="la"
		or lastEntered=="va"
		or lastEntered=="zha"
		or lastEntered=="na"
		or lastEntered=="nja"
		or lastEntered=="nga"
		or lastEntered=="Na"
		or lastEntered=="wa"
		or lastEntered=="ma"
		or lastEntered=="ja"
		or lastEntered=="Sa"
		or lastEntered=="sha"
		or lastEntered=="ha"){
		SendInput {Left}
		SendInput {asc 0188}
		SendInput {Right}
		SendInput {asc 086}
		lastEntered:=""
	}
	else{
		;SendInput {asc 20}
		;SendInput {asc 0182}
		lastEntered:=""
	}
return
:c*:W::
	;SendInput {asc 225}
	SendInput {asc 0110}
	lastEntered:="ai"	
return
:c*:w::
	if(lastEntered=="ka"
		or lastEntered=="sa"
		or lastEntered=="ta"
		or lastEntered=="tha"
		or lastEntered=="pa"
		or lastEntered=="Ra"
		or lastEntered=="ya"
		or lastEntered=="ra"
		or lastEntered=="La"
		or lastEntered=="la"
		or lastEntered=="va"
		or lastEntered=="zha"
		or lastEntered=="na"
		or lastEntered=="nja"
		or lastEntered=="nga"
		or lastEntered=="Na"
		or lastEntered=="wa"
		or lastEntered=="ma"
		or lastEntered=="ja"
		or lastEntered=="Sa"
		or lastEntered=="sha"
		or lastEntered=="ha"){
		SendInput {Left}
		SendInput {asc 0231}
		SendInput {Right}
		lastEntered:=""
	}
	else{
		;SendInput {asc 20}
		;SendInput {asc 0182}
		lastEntered:=""
	}
return
:c*:G::
	;SendInput {asc 225}
	SendInput {asc 0126}
	lastEntered:="u"	
return
:c*:g::
	if(lastEntered=="ka"){
		SendInput {Backspace}
		;SendInput {asc 139}
		SendInput {asc 0122}
		lastEntered:=""
	}else if(lastEntered=="sa"){
		SendInput {Backspace}
		;SendInput {asc 142}
		SendInput {asc 0183}
		lastEntered:=""
	}else if(lastEntered=="ta"){
		SendInput {Backspace}
		SendInput {asc  0124}
		lastEntered:=""
	}else if(lastEntered=="tha"){
		SendInput {Backspace}
		SendInput {asc  0109}
		lastEntered:=""
	}else if(lastEntered=="pa"){
		SendInput {Backspace}
		;SendInput {asc  226}
		SendInput {asc  065}
		lastEntered:=""
	}else if(lastEntered=="Ra"){
		SendInput {Backspace}
		SendInput {asc  0174}
		lastEntered:=""
	}else if(lastEntered=="ya"){
		SendInput {Backspace}
		SendInput {asc  0165}
		lastEntered:=""
	}else if(lastEntered=="ra"){
		SendInput {Backspace}
		;SendInput {asc  174}
		SendInput {asc  0242}
		lastEntered:=""
	}else if(lastEntered=="La"){
		SendInput {Backspace}
		;SendInput {asc  210}
		SendInput {asc  0211}
		lastEntered:=""
	}else if(lastEntered=="la"){
		SendInput {Backspace}
		;SendInput {asc  130}
		SendInput {asc  075}
		lastEntered:=""
	}else if(lastEntered=="va"){
		SendInput {Backspace}
		SendInput {asc  0161}
		lastEntered:=""
	}else if(lastEntered=="zha"){
		SendInput {Backspace}
		SendInput {asc  0191}
		lastEntered:=""
	}else if(lastEntered=="na"){
		SendInput {Backspace}
		;SendInput {asc  166}
		SendInput {asc  0272}
		lastEntered:=""
	}else if(lastEntered=="Na"){
		SendInput {Backspace}
		;SendInput {asc  227}
		SendInput {asc  098}
		lastEntered:=""
	}else if(lastEntered=="wa"){
		SendInput {Backspace}
		;SendInput {asc  134}
		SendInput {asc  079}
		lastEntered:=""
	}else if(lastEntered=="ma"){
		SendInput {Backspace}
		SendInput {asc  0120}
		lastEntered:=""
	}else if(lastEntered=="ja"){
		SendInput {Backspace}
		SendInput {asc  0104}
		lastEntered:=""
	}else if(lastEntered=="Sa"){
		SendInput {Backspace}
		;SendInput {asc  118}
		SendInput {asc  0113}
		lastEntered:=""
	}else if(lastEntered=="ha"){
		SendInput {Backspace}
		SendInput {asc  0248}
		lastEntered:=""
	}else if(lastEntered=="sha"){
		SendInput {Backspace}
		SendInput {asc  0215}
		lastEntered:=""
	}
	else{
		;SendInput {asc 20}
		;SendInput {asc 0182}
		lastEntered:=""
	}
return
:c*:T::
	;SendInput {asc 225}
	SendInput {asc 0187}
	lastEntered:="u"	
return
:c*:t::
	if(lastEntered=="ka"){
		SendInput {Backspace}
		;SendInput {asc 139}
		SendInput {asc 0237}
		lastEntered:=""
	}else if(lastEntered=="sa"){
		SendInput {Backspace}
		;SendInput {asc 142}
		SendInput {asc 0243}
		lastEntered:=""
	}else if(lastEntered=="ta"){
		SendInput {Backspace}
		SendInput {asc  0249}
		lastEntered:=""
	}else if(lastEntered=="tha"){
		SendInput {Backspace}
		SendInput {asc  035}
		lastEntered:=""
	}else if(lastEntered=="pa"){
		SendInput {Backspace}
		;SendInput {asc  226}
		SendInput {asc  0175}
		lastEntered:=""
	}else if(lastEntered=="Ra"){
		SendInput {Backspace}
		SendInput {asc  071}
		lastEntered:=""
	}else if(lastEntered=="ya"){
		SendInput {Backspace}
		SendInput {asc  082}
		lastEntered:=""
	}else if(lastEntered=="ra"){
		SendInput {Backspace}
		;SendInput {asc  174}
		SendInput {asc  0212}
		lastEntered:=""
	}else if(lastEntered=="La"){
		SendInput {Backspace}
		;SendInput {asc  210}
		SendInput {asc  0106}
		lastEntered:=""
	}else if(lastEntered=="la"){
		SendInput {Backspace}
		;SendInput {asc  130}
		SendInput {asc  0217}
		lastEntered:=""
	}else if(lastEntered=="va"){
		SendInput {Backspace}
		SendInput {asc  0198}
		lastEntered:=""
	}else if(lastEntered=="zha"){
		SendInput {Backspace}
		SendInput {asc  0241}
		lastEntered:=""
	}else if(lastEntered=="na"){
		SendInput {Backspace}
		;SendInput {asc  166}
		SendInput {asc  0251}
		lastEntered:=""
	}else if(lastEntered=="Na"){
		SendInput {Backspace}
		;SendInput {asc  227}
		SendInput {asc  073}
		lastEntered:=""
	}else if(lastEntered=="wa"){
		SendInput {Backspace}
		;SendInput {asc  134}
		SendInput {asc  0177}
		lastEntered:=""
	}else if(lastEntered=="ma"){
		SendInput {Backspace}
		SendInput {asc  074}
		lastEntered:=""
	}else if(lastEntered=="ja"){
		SendInput {Backspace}
		SendInput {asc  0201}
		lastEntered:=""
	}else if(lastEntered=="Sa"){
		SendInput {Backspace}
		;SendInput {asc  118}
		SendInput {asc  096}
		lastEntered:=""
	}else if(lastEntered=="ha"){
		SendInput {Backspace}
		SendInput {asc  0218}
		lastEntered:=""
	}else if(lastEntered=="sha"){
		SendInput {Backspace}
		SendInput {asc  0163}
		lastEntered:=""
	}
	else{
		;SendInput {asc 20}
		;SendInput {asc 0182}
		lastEntered:=""
	}
return

:c*:k::
	SendInput {asc 0239}
	lastEntered:="ka"
return
:c*:;::
	;SendInput {asc 225}
	SendInput {asc 0196}
	lastEntered:="sa"
return

:c*:'::
	;SendInput {asc 131}
	SendInput {asc  0166}
	lastEntered:="ta"
return
:c*:h::
	SendInput {asc 0195}
	lastEntered:="pa"
return
:c*:J::
	SendInput {asc 0197}
	lastEntered:="Ra"
return
:c*:/::
	;SendInput {asc 70}
	SendInput {asc 066}
	lastEntered:="ya"
return
:c*:j::
	;SendInput {asc 141}
	SendInput {asc 0171}
	lastEntered:="ra"
return
:c*:N::
	;SendInput {asc 198}
	SendInput {asc 0225}
	lastEntered:="La"
return
:c*:b::
	;SendInput {asc 278}
	SendInput {asc 0107}
	lastEntered:="va"
return

;FIXME KSH 0213  H 0227

;FIXME map z to S (as in bus)

:c*:n::
	;SendInput {asc 199}
	SendInput {asc  0233}
	lastEntered:="la"
return

:c*:V::
	;SendInput {asc 190}
	SendInput {asc 0170}
	lastEntered:="na"
return
:c*:C::
	SendInput {asc 0240}
	lastEntered:="Na"
return
:c*:v::
	SendInput {asc 0229}
	lastEntered:="wa"
return
:c*:c::
	;SendInput {asc 68}
	SendInput {asc 092}
	lastEntered:="ma"
return

:c*:_::
	;SendInput {asc 68}
	SendInput {asc 0224}
	lastEntered:="q"
return

:c*:U::
	SendInput {asc  0244}
	lastEntered:="nga"
return

:c*:}::
	SendInput {asc  081}
	lastEntered:="nja"
return
:c*:p::
	SendInput {asc 0219}
	lastEntered:="ja"

	;SendInput {asc 137}

return

:c*:m::
	SendInput {asc 0118}
	lastEntered:="Sa"
return

:c*:l::
	SendInput {asc 062}
	lastEntered:="tha"
return

:c*:B::
	SendInput {asc 0119}
	lastEntered:="zha"
		
return
	
:c*:u::

	SendInput {asc 0199}
	lastEntered:="ha"

return

:c*:<::

	SendInput {asc 0173}
	lastEntered:="sha"

return
