//pathname=get_absolute_file_path('11.05.sce')
//filename=pathname+filesep()+'11.05-data.sci'
//exec(filename)
//Height of chimney(in m):
H=80
//Ambient air temperature(in K):
Ta=27+273
//Mass per kg of fuel required for complete combustion(in kg):
m=20
//Temperature of the artificial burnt gases(in K):
Tga=110+273
//Specific heat of hot gases(in kJ/kg.K):
Cpg=1.0032
//Temperature of burnt gases(in K):
Tg=Ta*2*(m+1)/m
//Draught in water column(in mm):
hw=353*H*(1/Ta-(m+1)/(m*Tg))
//Chimney efficiency:
n=9.81*H*(m/(m+1)*Tg/Ta-1)/(Cpg*(Tg-Tga)*10^3)*100
printf("\n RESULT \n")
printf("\nHot gas temperature in chimney = %d K",Tg)
printf("\nNatural draught = %f mm of water",hw)
printf("\nChimney efficiency = %f percent",n)