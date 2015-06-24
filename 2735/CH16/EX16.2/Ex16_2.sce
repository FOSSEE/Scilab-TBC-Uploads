clc
clear
//Initialization of variables
per=0.071 //mass fraction of nitrogen
//calculations
O2=8.74
N2=per/2 + 3.76*O2
Nin=32.85
CO2=7.333
H2o=3
So2=0.0312
//results
printf("Oxygen = %.2f and Nitrogen = %.2f",O2,N2)
printf("\n Equation is C %.3f H %d + %.2f O2 + %.2f N2 = %.3f CO2 + %d H2O + %.5f SO2 + %.2f N2",CO2,2*H2o,O2,Nin,CO2,H2o,So2,N2)
