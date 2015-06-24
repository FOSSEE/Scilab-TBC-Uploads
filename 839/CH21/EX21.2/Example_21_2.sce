//clear//
clear;
clc;

//Example 21.2
//Given
K = 273.16
T = 100+K ; //[K]
P = 10; //[atm]
//From Table 21.1
TcA = 198+K; //[K]
TcB = -147+K; //[K]
rho_cA = 0.552; //[g/cm^3]
rho_cB = 0.311; //[g/cm^3]
MA = 137.5;
MB = 28;

//Solution
VcA = MA/rho_cA //[cm^3/g mol]
VcB = MB/rho_cB //[cm^3/g mol]
//Substituing in Eq.(21.25)
Dv = (0.01498*T^1.81*(1/MA+1/MB)^0.5)/(P*(TcA*TcB)^0.1405*(VcA^0.4+VcB^0.4)^2); //[cm^2/s]
disp('cm^2/s',Dv,'Volumetric Diffusivity (Dv) = ')
