clear
clc
//Example 13.6 FLOW RATE USING A VENTURI METER
del_p=35000; //pressure difference [Pa]
Gamma=9810; //specific weight[N/m^3]
del_h=del_p/Gamma //change in piezometric head [m]
d=0.2; //[m]
v=1.31*10^-6; //[m^2/s]
g=9.81; //[m/s^2]
ReK=(d/v)*sqrt(2*g*del_h) //(ReK=Re/K)
//Interpolating from fig.13.14
K=1.02; //flow coefficient
A=%pi*d^2/4 //area [m^2]
//Discharge
Q=1.02*A*sqrt(2*g*del_h) //[m^3/s]
printf("\nThe discharge of water at 10°C is %.3f m^3/s.\n",Q)