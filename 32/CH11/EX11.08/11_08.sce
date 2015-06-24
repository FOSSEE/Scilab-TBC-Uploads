//pathname=get_absolute_file_path('11.08.sce')
//filename=pathname+filesep()+'11.08-data.sci'
//exec(filename)
//Specific heat of hot gases(in kJ/kg.K):
Cpg=1.0032
//Temperature of burnt gases(in K):
Tg=177+273
//Ambient air temperature(in K):
Ta=27+273
//Natural draught temperature(in K):
Tn=327+273
//Mass per kg of fuel required for natural draught(in kg):
mn=25
//Mass per kg of fuel required for artificial draught(in kg):
ma=20
//Ratio of brake power for induced draught to forced draught:
r=Tg/Ta
//Heat carried by hot flue gases in artificial draught(in per kg of fuel burnt):
Qgad=(ma+1)*Cpg*(Tg-Ta)
//Heat carried by hot flue gases in natural draught(in per kg of fuel burnt):
Qgnd=(mn+1)*Cpg*(Tn-Ta)
//Ratio of heat carried away:
rh=Qgad/Qgnd
printf("\n RESULT \n")
printf("\nRatio of power required = %f",r)
printf("\nRatio of heat carried away = %f",rh)