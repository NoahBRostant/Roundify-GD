function Initialize()

	dofile(SKIN:MakePathAbsolute('Extra\\HSBLib\\HSBLib.lua'))
	curHue=0;curSat=0;curBri=0;curRed=0;curGreen=0;curBlue=0;formHue=0;formSat=0;formBri=0;curHex='#000000'
	
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
