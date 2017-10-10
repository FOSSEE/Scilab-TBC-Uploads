///Chapter No 7 Fluid Mechanics
///Example 7.15 Page No:127
/// Find Total energy per unit weight 
///Input data
clc;
clear;
S=0.85;              //Specific gravity of oil
D=0.08;              //Diameter of pipe in m
P=1*10^5;           //Intenity of presssure in N/m^2
Z=15;                //Total energy bead in m
E=45;                //Datum plane in m
Mdw=1*10^3;         //Mass density of water constant
g1=9.81;              //Gravity constant
rho=S*Mdw;           //Mass density of oil
pi1=3.14;

///calculation
rho=S*Mdw;           //Mass density of oil
//E=(P/(rho*g1))+((V**2)/(2*g1))+(Z);
V=sqrt((E-((P/(rho*g1))+Z))*(2*g1));  ///Total energy per unit weight in m/s
Q1=(pi1/4)*D^2*V                         //Discharge in m^3/Kg

///output
printf('mass density of oil=%f Kg/m^3 \n',rho);
printf('Total energy per unit weight= %f m/s \n ',V);
printf('discharge= %f m^3/kg',Q1);
