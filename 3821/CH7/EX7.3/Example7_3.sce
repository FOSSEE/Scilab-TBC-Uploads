///Chapter No 7 Fluid Mechanics
////find mass density of liquid
///Example 7.3 Page No:114
//Input data
clc;
clear;
S=0.85;             //Specific gravity of a liquid
g=9.81;             //Acceleration due to gravity in m/s**2(constant)
rhow=1000;          //Constant value


///Calculation
//Specific gravity S=roh/rohw 
rho=S*rhow;         //Mass density in Kg/m**3
w=rho*g;            //Weight Density in N/m**3
v=1/rhow;          //Specific volume in m**3/kg


///Output
printf('Mass densit= %f kg/m^3 \n  ',rho);
printf('Weight Density=%f N/m^3 \n ',w);
printf('Specific volume= %f m^3/kg \n ',v);
