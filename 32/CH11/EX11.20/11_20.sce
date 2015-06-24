//pathname=get_absolute_file_path('11.20.sce')
//filename=pathname+filesep()+'11.20-data.sci'
//exec(filename)
//Height of chimney(in m):
H=45
//Temperature of burnt gases(in K):
Tg=630
//Air requirement(in kg air per kg of fuel burnt):
m=15
//Ambient air temperature(in K):
Ta=300
//Minimum temperatre of artificial draught(in K):
Tga=150+273
//Specific heat of flue gases(in kJ/kg.K):
Cpg=1.005
//Calorific value of fuel(in kJ/kg):
C=30000
//Draught (in mm of water column):
hw=353*H*(1/Ta-(m+1)/(m*Tg))
//Draught (in metres of hot gas column):
hg=H*(m/(m+1)*Tg/Ta-1)
//Temperature of chimney for maximum discharge(in K):
Tgmax=Ta*2*(m+1)/m
//Chimney efficiency:
n=9.81*H*(m/(m+1)*Tg/Ta-1)/(Cpg*(Tg-Tga)*10^3)*100
//Extra heat carried away by flue gases(in kJ):
Q=(m+1)*Cpg*(Tg-Tga)
//Percentage heat spent in natural draught:
nn=Q/C*100
printf("\n RESULT \n")
printf("\nDraught = %f mm of water",hw)
printf("\nDraught = %f metres of hotgas column",hg)
printf("\nTemperature of chimney gases for maximum discharge = %d K",Tgmax)
printf("\nChimney efficiency = %f percent",n)
printf("\nExtra heat carried away by flue gases per kg of fuel burnt = %f kJ",Q)
printf("\nPercentage heat carried away in natural draught = %f percent",nn)