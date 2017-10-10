///Chapter No 7 Fluid Mechanics
///Find viscosity of the liquid 
///Example 7.5 Page No:116
//Input data
clc;
clear;
v=4*10^-4;    ///kinematic viscosity is 4 stoke inm**2/s
S=1.2;         //specific gravity
dow=1000;      ///density of water Kg/m**3


///Calculation
rho=S*dow;     
vol=rho*v;     //viscosity of the liquid in Ns/m**2 or poise

///Output
printf('viscosity of the liquid= %f Ns/m^2 \n',vol);
