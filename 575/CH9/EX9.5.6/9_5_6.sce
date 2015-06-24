clc
pathname=get_absolute_file_path('9_5_6.sce')
filename=pathname+filesep()+'956.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Using S balance, ")
m2=basis*x*MS*MSalt/(MAcid*MS)
printf(" \n m2=%f g Na2SO4",m2)
disp("Using Na balance, ")
m1=2*MNa*m2*MBase/(y*MNa*MSalt)
printf(" \n m1=%f g NaOH",m1)
disp("Total mass balance, ")
m3=basis+m1-m2
printf(" \n m3=%f g H2O",m3)
printf(" \n Mass of product solution =%f",m2+m3)
m=m2+m3
Water=m2*2/MSalt
printf(" \n Water Formed in the reaction=%f mol H2O",Water)
disp("H2SO4(aq):")
a1=basis*(1-x)/MWater
b1=basis*x/MAcid
rAcid=a1/b1
printf(" \n rAcid=%f mol Water/mol Acid",rAcid)
disp("NaOH(aq):")
a2=m1*(1-y)/MWater
b2=m1*y/MBase
rBase=a2/b2
printf(" \n rBase=%f mol Water/mol Base",rBase)
disp("Na2SO4(aq):")
a3=m3/MWater
b3=m2/MSalt
rSalt=a3/b3
printf(" \n rSalt=%f mol Water/mol Salt",rSalt)
E=b1
printf(" \n Extent of reaction=%f mol",E)
nHAcid=basis*3.85*(T3-T1)/1000
nHSalt=m*4.184*(T2-T1)/1000
nHBase=0
HfSalt= -1384
HfAcid= -884.6
HfBase= -468.1
HfWater= -285.84
deltaHr=HfSalt+ 2*HfWater - HfAcid - 2*HfBase
printf(" \n Entahlpy change in the rxn=%f Kj/mol",deltaHr)
Q=E*deltaHr + (nHSalt-nHAcid-nHBase)
printf(" \n Q of the rxn=%f Kj",Q)
disp("The answer in the Text is wrong.")