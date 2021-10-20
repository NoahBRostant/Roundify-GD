function Initialize()

	dofile(SKIN:MakePathAbsolute('Extra\\HSBLib\\HSBLib.lua'))
	curHue=0;curSat=0;curBri=0;curRed=0;curGreen=0;curBlue=0;formHue=0;formSat=0;formBri=0;curHex='#000000';AApaletteR=0;AApaletteG=0;AApaletteB=0;ABpaletteR=0;ABpaletteG=0;ABpaletteB=0;ADpaletteR=0;ADpaletteG=0;ADpaletteB=0;AEpaletteR=0;AEpaletteG=0;AEpaletteB=0;TApaletteR=0;TApaletteG=0;TApaletteB=0;TBpaletteR=0;TBpaletteG=0;TBpaletteB=0;TDpaletteR=0;TDpaletteG=0;TDpaletteB=0;TEpaletteR=0;TEpaletteG=0;TEpaletteB=0;CApaletteR=0;CApaletteG=0;CApaletteB=0;CBpaletteR=0;CBpaletteG=0;CBpaletteB=0;CDpaletteR=0;CDpaletteG=0;CDpaletteB=0;CEpaletteR=0;CEpaletteG=0;CEpaletteB=0;C2ApaletteR=0;C2ApaletteG=0;C2ApaletteB=0;C2BpaletteR=0;C2BpaletteG=0;C2BpaletteB=0;C2DpaletteR=0;C2DpaletteG=0;C2DpaletteB=0;C2EpaletteR=0;C2EpaletteG=0;C2EpaletteB=0;MApaletteR=0;MApaletteG=0;MApaletteB=0;MBpaletteR=0;MBpaletteG=0;MBpaletteB=0;MDpaletteR=0;MDpaletteG=0;MDpaletteB=0;MEpaletteR=0;MEpaletteG=0;MEpaletteB=0;SApaletteR=0;SApaletteG=0;SApaletteB=0;SBpaletteR=0;SBpaletteG=0;SBpaletteB=0;SDpaletteR=0;SDpaletteG=0;SDpaletteB=0;SEpaletteR=0;SEpaletteG=0;SEpaletteB=0;S2ApaletteR=0;S2ApaletteG=0;S2ApaletteB=0;S2BpaletteR=0;S2BpaletteG=0;S2BpaletteB=0;S2DpaletteR=0;S2DpaletteG=0;S2DpaletteB=0;S2EpaletteR=0;S2EpaletteG=0;S2EpaletteB=0
	
end

function Update()

	curRed, curGreen, curBlue = string.match(SKIN:GetVariable('Chosen'), '(%d+),(%d+),(%d+)')
	curHue, curSat, curBri = RGBtoHSB(SKIN:GetVariable('Chosen'))	
	
	perHue = 360 * curHue
	formHue = string.format("%.0f", Round(perHue,5))
	formSat = string.format("%.0f", Round((curSat*100),5))
	formBri = string.format("%.0f", Round((curBri*100),5))

	AApaletteHue = curHue+0.0916666666666667
	ABpaletteHue = curHue+0.0444444444444444
	ADpaletteHue = curHue-0.0444444444444444
	AEpaletteHue = curHue-0.0916666666666667
	ApaletteSat = curSat+0.05
	AAEpaletteBri = curBri+0.09
	ABDpaletteBri = curBri+0.05

	TBpaletteHue = curHue+0.2027777777777778
	TDEpaletteHue = curHue+0.5888888888888889
	TApaletteSat = curSat-0.26
	TBpaletteSat = curSat-0.1
	TDpaletteSat = curSat+0.1
	TEpaletteSat = curSat+0.26
	TAEpaletteBri = curBri-0.3

	CApaletteHue = curHue+0.0888888888888889
	CBpaletteHue = curHue-0.5527777777777778
	CDpaletteHue = curHue-0.4833333333333333
	CEpaletteHue = curHue-0.0888888888888889
	CApaletteSat = curSat-0.05
	CBpaletteSat = curSat-0.1
	CDpaletteSat = curSat+0.1
	CEpaletteSat = curSat+0.05

	C2ABpaletteHue = curHue+0.0888888888888889
	C2DpaletteHue = curHue-0.4722222222222222
	C2EpaletteHue = curHue-0.4944444444444444
	C2AEpaletteSat = curSat+0.1
	C2BpaletteSat = curSat-0.4
	C2DpaletteSat = curSat-0.25
	C2AEpaletteBri = curBri-0.2
	C2BpaletteBri = curBri-0.4
	C2DpaletteBri = curBri-0.02

	MBDpaletteSat = curSat-0.3
	MADpaletteBri = curBri-0.5
	MBpaletteBri = curBri+0.02
	MEpaletteBri = curBri-0.2

	SApaletteBri = curBri-0.25
	SBpaletteBri = curBri-0.5
	SDpaletteBri = curBri+0.05
	SEpaletteBri = curBri-0.1

	S2BpaletteHue = curHue+0.2666666666666667
	S2DpaletteHue = curHue-0.4861111111111111
	S2EpaletteHue = curHue-0.2777777777777778
	S2ADpaletteSat = curSat-0.1
	S2BpaletteSat = curSat-0.2
	S2EpaletteSat = curSat-0.05

	curHex = RGBtoHEX(curRed, curGreen, curBlue)

	AApaletteR, AApaletteG, AApaletteB = HSBtoRGB(AApaletteHue, ApaletteSat, AAEpaletteBri)
	ABpaletteR, ABpaletteG, ABpaletteB = HSBtoRGB(ABpaletteHue, ApaletteSat, ABDpaletteBri)
	ADpaletteR, ADpaletteG, ADpaletteB = HSBtoRGB(ADpaletteHue, ApaletteSat, ABDpaletteBri)
	AEpaletteR, AEpaletteG, AEpaletteB = HSBtoRGB(AEpaletteHue, ApaletteSat, AAEpaletteBri)

	TApaletteR, TApaletteG, TApaletteB = HSBtoRGB(curHue, TApaletteSat, TAEpaletteBri)
	TBpaletteR, TBpaletteG, TBpaletteB = HSBtoRGB(TBpaletteHue, TBpaletteSat, curBri)
	TDpaletteR, TDpaletteG, TDpaletteB = HSBtoRGB(TDEpaletteHue, TDpaletteSat, curBri)
	TEpaletteR, TEpaletteG, TEpaletteB = HSBtoRGB(TDEpaletteHue, TEpaletteSat, TAEpaletteBri)

	CApaletteR, CApaletteG, CApaletteB = HSBtoRGB(CApaletteHue, CApaletteSat, curBri)
	CBpaletteR, CBpaletteG, CBpaletteB = HSBtoRGB(CBpaletteHue, CBpaletteSat, curBri)
	CDpaletteR, CDpaletteG, CDpaletteB = HSBtoRGB(CDpaletteHue, CDpaletteSat, curBri)
	CEpaletteR, CEpaletteG, CEpaletteB = HSBtoRGB(CEpaletteHue, CEpaletteSat, curBri)

	C2ApaletteR, C2ApaletteG, C2ApaletteB = HSBtoRGB(C2ABpaletteHue, C2AEpaletteSat, C2AEpaletteBri)
	C2BpaletteR, C2BpaletteG, C2BpaletteB = HSBtoRGB(C2ABpaletteHue, C2BpaletteSat, C2BpaletteBri)
	C2DpaletteR, C2DpaletteG, C2DpaletteB = HSBtoRGB(C2DpaletteHue, C2DpaletteSat, C2DpaletteBri)
	C2EpaletteR, C2EpaletteG, C2EpaletteB = HSBtoRGB(C2EpaletteHue, C2AEpaletteSat, C2AEpaletteBri)

	MApaletteR, MApaletteG, MApaletteB = HSBtoRGB(curHue, curSat, MADpaletteBri)
	MBpaletteR, MBpaletteG, MBpaletteB = HSBtoRGB(curHue, MBDpaletteSat, MBpaletteBri)
	MDpaletteR, MDpaletteG, MDpaletteB = HSBtoRGB(curHue, MBDpaletteSat, MADpaletteBri)
	MEpaletteR, MEpaletteG, MEpaletteB = HSBtoRGB(curHue, curSat, MEpaletteBri)

	SApaletteR, SApaletteG, SApaletteB = HSBtoRGB(curHue, curSat, SApaletteBri)
	SBpaletteR, SBpaletteG, SBpaletteB = HSBtoRGB(curHue, curSat, SBpaletteBri)
	SDpaletteR, SDpaletteG, SDpaletteB = HSBtoRGB(curHue, curSat, SDpaletteBri)
	SEpaletteR, SEpaletteG, SEpaletteB = HSBtoRGB(curHue, curSat, SEpaletteBri)

	S2ApaletteR, S2ApaletteG, S2ApaletteB = HSBtoRGB(curHue, S2ADpaletteSat, curBri)
	S2BpaletteR, S2BpaletteG, S2BpaletteB = HSBtoRGB(S2BpaletteHue, S2BpaletteSat, curBri)
	S2DpaletteR, S2DpaletteG, S2DpaletteB = HSBtoRGB(S2DpaletteHue, S2ADpaletteSat, curBri)
	S2EpaletteR, S2EpaletteG, S2EpaletteB = HSBtoRGB(S2EpaletteHue, S2EpaletteSat, curBri)

	return curRed..','..curGreen..','..curBlue
	
end

function UpdateColors()

	SKIN:Bang('!SetVariable', 'Chosen', curRed..','..curGreen..','..curBlue)
	
	perHue = 360 * curHue
	formHue = string.format("%.0f", Round(perHue,5))
	formSat = string.format("%.0f", Round((curSat*100),5))
	formBri = string.format("%.0f", Round((curBri*100),5))

	AApaletteHue = curHue+0.0916666666666667
	ABpaletteHue = curHue+0.0444444444444444
	ADpaletteHue = curHue-0.0444444444444444
	AEpaletteHue = curHue-0.0916666666666667
	ApaletteSat = curSat+0.05
	AAEpaletteBri = curBri+0.09
	ABDpaletteBri = curBri+0.05

	TBpaletteHue = curHue+0.2027777777777778
	TDEpaletteHue = curHue+0.5888888888888889
	TApaletteSat = curSat-0.26
	TBpaletteSat = curSat-0.1
	TDpaletteSat = curSat+0.1
	TEpaletteSat = curSat+0.26
	TAEpaletteBri = curBri-0.3

	CApaletteHue = curHue+0.0888888888888889
	CBpaletteHue = curHue-0.5527777777777778
	CDpaletteHue = curHue-0.4833333333333333
	CEpaletteHue = curHue-0.0888888888888889
	CApaletteSat = curSat-0.05
	CBpaletteSat = curSat-0.1
	CDpaletteSat = curSat+0.1
	CEpaletteSat = curSat+0.05

	C2ABpaletteHue = curHue+0.0888888888888889
	C2DpaletteHue = curHue-0.4722222222222222
	C2EpaletteHue = curHue-0.4944444444444444
	C2AEpaletteSat = curSat+0.1
	C2BpaletteSat = curSat-0.4
	C2DpaletteSat = curSat-0.25
	C2AEpaletteBri = curBri-0.2
	C2BpaletteBri = curBri-0.4
	C2DpaletteBri = curBri-0.02

	C2ABpaletteHue = curHue+0.0888888888888889
	C2DpaletteHue = curHue-0.4722222222222222
	C2EpaletteHue = curHue-0.4944444444444444
	C2AEpaletteSat = curSat+0.1
	C2BpaletteSat = curSat-0.4
	C2DpaletteSat = curSat-0.25
	C2AEpaletteBri = curBri-0.2
	C2BpaletteBri = curBri-0.4
	C2DpaletteBri = curBri-0.02

	MBDpaletteSat = curSat-0.3
	MADpaletteBri = curBri-0.5
	MBpaletteBri = curBri+0.02
	MEpaletteBri = curBri-0.2
	
	SApaletteBri = curBri-0.25
	SBpaletteBri = curBri-0.5
	SDpaletteBri = curBri+0.05
	SEpaletteBri = curBri-0.1
	
	S2BpaletteHue = curHue+0.2666666666666667
	S2DpaletteHue = curHue-0.4861111111111111
	S2EpaletteHue = curHue-0.2777777777777778
	S2ADpaletteSat = curSat-0.1
	S2BpaletteSat = curSat-0.2
	S2EpaletteSat = curSat-0.05

	curHex = RGBtoHEX(curRed, curGreen, curBlue)

	AApaletteR, AApaletteG, AApaletteB = HSBtoRGB(AApaletteHue, ApaletteSat, AAEpaletteBri)
	ABpaletteR, ABpaletteG, ABpaletteB = HSBtoRGB(ABpaletteHue, ApaletteSat, ABDpaletteBri)
	ADpaletteR, ADpaletteG, ADpaletteB = HSBtoRGB(ADpaletteHue, ApaletteSat, ABDpaletteBri)
	AEpaletteR, AEpaletteG, AEpaletteB = HSBtoRGB(AEpaletteHue, ApaletteSat, AAEpaletteBri)

	TApaletteR, TApaletteG, TApaletteB = HSBtoRGB(curHue, TApaletteSat, TAEpaletteBri)
	TBpaletteR, TBpaletteG, TBpaletteB = HSBtoRGB(TBpaletteHue, TBpaletteSat, curBri)
	TDpaletteR, TDpaletteG, TDpaletteB = HSBtoRGB(TDEpaletteHue, TDpaletteSat, curBri)
	TEpaletteR, TEpaletteG, TEpaletteB = HSBtoRGB(TDEpaletteHue, TEpaletteSat, TAEpaletteBri)

	CApaletteR, CApaletteG, CApaletteB = HSBtoRGB(CApaletteHue, CApaletteSat, curBri)
	CBpaletteR, CBpaletteG, CBpaletteB = HSBtoRGB(CBpaletteHue, CBpaletteSat, curBri)
	CDpaletteR, CDpaletteG, CDpaletteB = HSBtoRGB(CDpaletteHue, CDpaletteSat, curBri)
	CEpaletteR, CEpaletteG, CEpaletteB = HSBtoRGB(CEpaletteHue, CEpaletteSat, curBri)

	C2ApaletteR, C2ApaletteG, C2ApaletteB = HSBtoRGB(C2ABpaletteHue, C2AEpaletteSat, C2AEpaletteBri)
	C2BpaletteR, C2BpaletteG, C2BpaletteB = HSBtoRGB(C2ABpaletteHue, C2BpaletteSat, C2BpaletteBri)
	C2DpaletteR, C2DpaletteG, C2DpaletteB = HSBtoRGB(C2DpaletteHue, C2DpaletteSat, C2DpaletteBri)
	C2EpaletteR, C2EpaletteG, C2EpaletteB = HSBtoRGB(C2EpaletteHue, C2AEpaletteSat, C2AEpaletteBri)
	
	MApaletteR, MApaletteG, MApaletteB = HSBtoRGB(curHue, curSat, MADpaletteBri)
	MBpaletteR, MBpaletteG, MBpaletteB = HSBtoRGB(curHue, MBDpaletteSat, MBpaletteBri)
	MDpaletteR, MDpaletteG, MDpaletteB = HSBtoRGB(curHue, MBDpaletteSat, MADpaletteBri)
	MEpaletteR, MEpaletteG, MEpaletteB = HSBtoRGB(curHue, curSat, MEpaletteBri)

	SApaletteR, SApaletteG, SApaletteB = HSBtoRGB(curHue, curSat, SApaletteBri)
	SBpaletteR, SBpaletteG, SBpaletteB = HSBtoRGB(curHue, curSat, SBpaletteBri)
	SDpaletteR, SDpaletteG, SDpaletteB = HSBtoRGB(curHue, curSat, SDpaletteBri)
	SEpaletteR, SEpaletteG, SEpaletteB = HSBtoRGB(curHue, curSat, SEpaletteBri)

	S2ApaletteR, S2ApaletteG, S2ApaletteB = HSBtoRGB(curHue, S2ADpaletteSat, curBri)
	S2BpaletteR, S2BpaletteG, S2BpaletteB = HSBtoRGB(S2BpaletteHue, S2BpaletteSat, curBri)
	S2DpaletteR, S2DpaletteG, S2DpaletteB = HSBtoRGB(S2DpaletteHue, S2ADpaletteSat, curBri)
	S2EpaletteR, S2EpaletteG, S2EpaletteB = HSBtoRGB(S2EpaletteHue, S2EpaletteSat, curBri)

	SKIN:Bang('!Update')
	
end

function ChangeRed(arg)
	
	if SKIN:GetVariable('RGBSpeed') == '0' then
		changeAmount = 1
	else
		changeAmount= 10
	end
	if string.upper(arg) == 'DOWN' then
		curRed = Clamp(curRed - changeAmount, 0, 255)
	else
		curRed = Clamp(curRed + changeAmount, 0, 255)
	end
	
	curHue, curSat, curBri = RGBtoHSB(curRed..','..curGreen..','..curBlue)
	
	UpdateColors()
	
end

function ChangeGreen(arg)

	if SKIN:GetVariable('RGBSpeed') == '0' then
		changeAmount = 1
	else
		changeAmount= 10
	end
	if string.upper(arg) == 'DOWN' then
		curGreen = Clamp(curGreen - changeAmount, 0, 255)
	else
		curGreen = Clamp(curGreen + changeAmount, 0, 255)
	end
	
	curHue, curSat, curBri = RGBtoHSB(curRed..','..curGreen..','..curBlue)
	
	UpdateColors()
	
end

function ChangeBlue(arg)

	if SKIN:GetVariable('RGBSpeed') == '0' then
		changeAmount = 1
	else
		changeAmount= 10
	end
	if string.upper(arg) == 'DOWN' then
		curBlue = Clamp(curBlue - changeAmount, 0, 255)
	else
		curBlue = Clamp(curBlue + changeAmount, 0, 255)
	end
	
	curHue, curSat, curBri = RGBtoHSB(curRed..','..curGreen..','..curBlue)
	
	UpdateColors()
	
end

function ChangeHue(arg)

	if SKIN:GetVariable('HSBSpeed') == '0' then
		changeAmount = 0.001
	else
		changeAmount= 0.01
	end
	if string.upper(arg) == 'DOWN' then
		curHue = Clamp(curHue - changeAmount, 0, 1)
	else
		curHue = Clamp(curHue + changeAmount, 0, 1)
	end
	
	curRed, curGreen, curBlue = HSBtoRGB(curHue, curSat, curBri)
	
	UpdateColors()

end

function ChangeSat(arg)

	if SKIN:GetVariable('HSBSpeed') == '0' then
		changeAmount = 0.01
	else
		changeAmount= 0.1
	end
	if string.upper(arg) == 'DOWN' then
		curSat = Clamp(curSat - changeAmount, 0, 1)
	else
		curSat = Clamp(curSat + changeAmount, 0, 1)
	end
	
	curRed, curGreen, curBlue = HSBtoRGB(curHue, curSat, curBri)
	
	UpdateColors()

end

function ChangeBri(arg)

	if SKIN:GetVariable('HSBSpeed') == '0' then
		changeAmount = 0.01
	else
		changeAmount= 0.1
	end
	if string.upper(arg) == 'DOWN' then
		curBri = Clamp(curBri - changeAmount, 0, 1)
	else
		curBri = Clamp(curBri + changeAmount, 0, 1)
	end
	
	curRed, curGreen, curBlue = HSBtoRGB(curHue, curSat, curBri)
	
	UpdateColors()

end

function SetHEX(arg)

	curRed, curGreen, curBlue = HEXtoRGB(arg)
	curHue, curSat, curBri = RGBtoHSB(curRed..','..curGreen..','..curBlue)	

	UpdateColors()
	
end
