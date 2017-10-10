///Chapter No 7 Fluid Mechanics
///Example 7.1 Page No:113
////Find mass density of liquid
//Input data
clc;
clear;
V=5;            //volume of the liquid in m**3
W=45*10^3;     //weight of the liquid in KN
g=9.81;         //acceleration due to gravity in m/s**2
rhow=1000;      //constant value

////Calculation
m=W/g;    //mass in Kg
rho=m/V;      //Mass density in kg/m**3
w=W/V;        //Weight Density in N/m**3
v=V/m;        //Specific volume in m**3/kg
S=rho/rhow;     //Specific gravity
 
    
//Output
printf('mass=%f kg \n',m);
printf('Mass density= %f kg/m^3 \n  ',rho);
printf('Weight Density= %f N/m^3\n ',w);
printf('Specific volume=%f m^3/kg \n',v);
printf('Specific gravity= %f \n',S);
