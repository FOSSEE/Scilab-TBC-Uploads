//clear//
clear;
clc;

//Example 8.4
//Given
q = 75/3600 ; // [m^3/s]
rho = 62.37*16.018; //[kg/m^3] From Appendix 4
Cv = 0.98;
g = 9.80665; //[m/s^2]
Sw = 1;
Sm = 13.6;
h = 1.25; //[m]
//(a)
//Using Eq.(2.10)
delta_p = g*h*(Sm-Sw)*rho ; //[N/m^2]
//Using Eq.(8.36), neglecting the effect of beta
Sb = q/(Cv*sqrt(2*delta_p/rho)); 
Db = sqrt(4*Sb/%pi)*100  // [mm]

//(b)
press_loss = 0.1*delta_p; //[N/m^2]
// Power required at full flow
P = q*press_loss/1000 // [kW]
