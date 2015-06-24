//clear//
clear;
clc;

//Example 6.3
//Given
pa = 2.7; //[atm]
T = 288; //[K]
D = 0.075; //[m]
L = 70; //[m]
Vbar  = 60; //[m/s] 
M = 29;
rh = D/4; //[m]
mu = 1.74*10^-5 //[kg/m-s] Appendix 8
rho_a = (29/22.4)*(2.7/1)*(273/288) // [kg/m^3]
R = 82.056*10^-3; 
G = Vbar*rho_a //[kg/m^2-s]
Nre = D*G/mu;
kbyd = 0.00015*(0.3048/0.075);
f = 0.0044; //[from Fig. 5.9]

//Using Eq.(6.52)
//pbar = 1.982; //[atm]
//pb = 1.264; //[atm]
err = 1;
eps = 10^-3;
pb = 1.5;

while(err>eps)  
pbar = (pa+pb)/2;
A = ((f*L/(2*rh))+log(pa/pb));
pb_new = pa-(R*T*G^2/(pbar*29*101325))*A;
err = pb-pb_new;
pb = pb_new;
end
pb; //[atm]
pbar = (pa+pb)/2 // [atm]
