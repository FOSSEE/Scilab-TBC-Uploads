///Chapter No 7 Fluid Mechanics
//Example 7.11 Page No 121
//#Input data
clc;
clear; 
Z=15;            //Pressure due to column in m
S=0.85;          //Oil of specific gravity
g=9.81;          //Gravity



///Calculation
rho=S*10^3;     //Density of oil in kg/m**3
P=rho*g*Z;       //Pressure in N/m**2 or kPa


///Output
printf('Density of oil= % f kg/m^3 \n ',rho);
printf('Pressure= %f N/m**2 \n ',P);
