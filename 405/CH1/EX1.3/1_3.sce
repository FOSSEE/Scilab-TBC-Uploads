clear;
clc;
printf("\t\t\tExample Number 1.3\n\n\n");
// multimode heat transfer
// illustration1.3
// solution

Qconv = 2156;// [W] from previous problem
Qrad = 300;// [W] given
dx = 0.02;// [m] plate thicknesss
l = 0.75;// [m] length of plate 
w = 0.5;// [m] width of plate
k = 43;//[W/m] from table 1.1
area = l*w;//[square meter] area of plate
Qcond = Qconv+Qrad;// [W]
dt = Qcond*dx/(k*area);// [degree celsius] temperature difference
Ti = 250+dt;// inside temperature
printf("the inside plate temperature is therefore %f degree celsius",Ti);