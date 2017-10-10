///Chapter No 7 Fluid Mechanics
////Find mass density of oil
///Example 7.2 Page No:114
///Input data
clc;
clear;
V=3*10^-3;      //3l of oil in m**3
W=24;            //Weight of oil in N
g=9.81;          //Gravity in m/s**2
rhow=1000;       //Constant value


//Calculation
m=W/g;     //Mass in Kg
rho=m/V;       //Mass density in kg/m**3
w=W/V;         //Weight Density in N/m**3
v=V/m;         //Specific volume in m**3/kg
S=rho/rhow;      //Specific gravity
 
//Output
printf('mass= %f kg \n',m);
printf('Mass density= %f kg/m^3 \n',rho);
printf('Weight Density= %f N/m^3\n ',w);
printf('Specific volume= %f m^3/kg \n ',v);
printf('Specific gravity= %f \n ',S);

