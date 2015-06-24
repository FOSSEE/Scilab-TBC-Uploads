clc
clear
//Initalization of variables
mc=3000 //lb
hv=1080.2 //Btu/lb
hfe=26.06 //Btu/lb
hfp=10.05 //Btu/lb
x=0.7
//calculations
mv=(mc*hfp-mc*hfe)/(hfe-hv)
dh=145.4 //Btu/lb
chp=dh*mv/(x*42.4)
cop=mc*(hfe-hfp)/(chp*42.4)
//results
printf("Coefficient of performace = %.2f ",cop)
