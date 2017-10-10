clear
clc
//Example 13.8 FLOW RATE FOR A TRIANGULAR WEIR
H=0.43; //head on weir[m]
g=9.81; //[m/s^2]
//Discharge
Q=0.179*sqrt(2*g*(H^5)) //[m^3/s]
printf("\n The flow of water over the weir = %.3f m^3/s.\n",Q)