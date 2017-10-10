clear
clc
//Example 13.7 FLOW RATE FOR A RECTANGULAR WEIR
H=0.21; //head on weir[m]
P=0.6; //height of weir[m]
L=1.3; //width[m]
g=9.81; //acceleration due to gravity[m/s^2]
//Flow coefficient
K=0.4+0.05*(H/P) 
//Discharge
Q=K*L*sqrt(2*g*H^3) //[m^3/s]
printf("\nThe discharge of water over the weir = %.2f m^3/s.\n",Q)