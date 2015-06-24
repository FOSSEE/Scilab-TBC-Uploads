clc
clear
//Initialization of variables
W=0.0065  //lbm/lbm of dry air
t=80 //F
td=60 //F
//calculations
H=0.24*t+W*(1060+0.45*t)
sig=H-W*(td-32)
Ws=0.0111
H2=0.24*td+Ws*(1060+0.45*td)
sig2=H2-Ws*(td-32)
//results
printf("In case 1, enthalpy = %.2f Btu/lbm dry air",H)
printf("\n In case 1, sigma function = %.2f Btu/lbm dry air",sig)
printf("\n In case 2, enthalpy = %.2f Btu/lbm dry air",H2)
printf("\n In case 2, sigma function = %.2f Btu/lbm dry air",sig2)
