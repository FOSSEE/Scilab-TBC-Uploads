//Chapter 6,Problem 3
clc;
C=5*10^-6;              //Charge in coulomb
I=2*10^-3;              //Current in ampere
V=800;                  //Voltage
Q=C*V;                  //Calculating charge
t=Q/I;                  //Calculating time of current 2mA to discharge
printf("The capacitor can provide an average discharge current of 2mA = %f sec",t);
