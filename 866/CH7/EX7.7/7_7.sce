clc
//initialisation of variables
A= 120*300 //mm^2
At= 6*300 //mm^2
Ec= 150 //N/mm^2
Et= 150*15 //N/mm^2
P= 150*10^3 //N
//CALCULATIONS
Ac= A-At
sigmaci= (Ec*At)/Ac
F= Ac*sigmaci
stressintheconcrete= (sigmaci)-((Ec*P)/(Ac*Ec+At*Et))
stressinthesteel= (F/At)+((Et*P)/(Ac*Ec+At*Et))
printf ('stressintheconcrete= %.1f N/mm^2(compression)',stressintheconcrete)
printf (' \n stressinthesteel=% f N/mm^2(tension)',stressinthesteel)
