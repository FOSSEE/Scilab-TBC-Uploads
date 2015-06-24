//pathname=get_absolute_file_path('11.04.sce')
//filename=pathname+filesep()+'11.04-data.sci'
//exec(filename)
//Height of chimney(in m):
H=60
//Ambient air temperature(in K):
Ta=17+273
//Temperature of burnt gases(in K):
Tg=300+273
//Temperature of the artificial burnt gases(in K):
Tga=150+273
//Mass per kg of fuel required for complete combustion(in kg):
m=19
//Specific heat of hot gases(in kJ/kg.K):
Cpg=1.0032
//Calorific value of burnt fuel(in kJ/kg):
c=32604
//Draught (in mm of water column):
hw=353*H*(1/Ta-(m+1)/(m*Tg))
//Chimney efficiency:
n=9.81*H*(m/(m+1)*Tg/Ta-1)/(Cpg*(Tg-Tga)*10^3)*100
//Extra heat carried away by flue gases(in kJ):
Q=(m+1)*Cpg*(Tg-Tga)
printf("\n RESULT \n")
printf("\nDraught = %f mm of water",hw)
printf("\nChimney efficiency = %f percent",n)
printf("\nExtra heat carried away by flue gases per kg of fuel burnt = %f kJ",Q)