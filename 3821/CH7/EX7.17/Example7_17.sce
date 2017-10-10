///Chapter No 7 Fluid Mechanics
///Example 7.17 Page No:128
/// Find bernoulli's equation for discharge
//input data
//refer figure 12
clc;
clear;
Q1=0.04;             //Water flows at rate in m**2/s
DA=0.22;            //Pipe diameter at section A in m
DB=0.12;            //Pipe diameter at section B in m
PA=400*10^3;       //Intensity of pressure at setion A in kPa
PB=150*10^3;       //Intensity of pressure at setion B in kPa
pi1=3.14;            //Pi constant 
g1=9.81;             //Gravity constant
rho=1000;

///Calculation
VA=Q1/(pi1/4*(DA)^2); //contuity equation for discharge
VB=Q1/(pi1/4*(DB)^2); //bernoulli's equation for discharge
///Z=ZB-ZA
Z=(PA/(rho*g1))+(VA^2/(2*g1))-(PB/(rho*g1))-(VB^2/(2*g1));


///Output
printf('Contuity equation for discharge= %f m63 \n ',VA);
printf('Contuity equation for discharge= %f m^3 \n ',VB);
printf('Bernoullis equation for discharge=%f m \n',Z);
