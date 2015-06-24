clc
clear
//Initalization of variables
eff=0.97
c1=94.9 //Btu/lb
c2=138.8 //Btu/lb
ntee=246 //Btu/lb
//calculations
cwork=c1/eff
twork=c2*eff
net=twork-cwork
etat=net/ntee *100
//results
printf("Compressor work = %.1f Btu/lb",cwork)
printf("\n Turbine work = %.1f Btu/lb",twork)
printf("\n Net work = %.1f Btu/lb",net)
printf("\n Thermal efficiency = %.1f percent",etat)
