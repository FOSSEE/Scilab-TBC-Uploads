clc
clear
//Initialization of variables
ma=200000 //lb
cpa=0.26
T2g=1200 //F
T1g=300 //F
T1w=200 //F
mw=250000 //lb
cpw=1.02
Tl=560  //R
cx=1.01
//calculations
T2w=T1w+ ma*cpa*(T2g-T1g)/(mw*cpw)
Qun=Tl*ma*cpa*log((T2g+460)/(T1g+460))
Qtr=ma*cpa*(T2g-T1g)
Qav=Qtr-Qun
Qun2=Tl*mw*cx*log((T2w+460)/(T1w+460))
Qav2=Qtr-Qun2
ht1=Qav-Qav2
//results
printf("For gas, Untransferred energy = %d Btu/hr",Qun)
printf("\n For gas, transferred energy = %d Btu/hr",Qtr)
printf("\n For gas, available energy = %d Btu/hr",Qav)
printf("\n For water, Untransferred energy = %d Btu/hr",Qun2)
printf("\n For water, available energy = %d Btu/hr",Qav2)
printf("\n Loss of available energy = %d Btu/hr",ht1)
disp('The answers are a bit different due to rounding off error in textbook')
