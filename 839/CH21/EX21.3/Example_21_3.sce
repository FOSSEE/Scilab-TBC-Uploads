//clear//
clear;
clc;

//Example 21.3
//Given
//1 = benzene and 2 = toluene
M1 = 78.11;
M2 = 92.13;
T1_bp = 80.1+273; //[K]
T2_bp = 110.6+273; //[K]
VA1 = 96.5; //[cm^3/mol]
VA2 = 118.3; //[cm^3/mol]
mu1 = 0.24; //[cP]
mu2 = 0.26; //[cP] 
T  = 110+273; //[K]
//Solution
//From Eq.(21.26)
//For benzene in toulene,
Dv1 = 7.4*10^-8*(M2)^0.5*T/(mu2*VA1^0.6); //[cm^2/s]

//For toluene in benzene,
Dv2 = 7.4*10^-8*(M1)^0.5*T/(mu1*VA2^0.6); //[cm^2/s]

disp('cm^2/s',Dv1,'Diffusivity of benzene in toluene is');
disp('cm^2/s',Dv2,'Diffusivity of toluene in benzene is');
