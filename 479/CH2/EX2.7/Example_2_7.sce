//Chemical Engineering Thermodynamics
//Chapter 2
//P-V-T Relations

//Example 2.7
clear;
clc;

//Given
n = 1;//n is the Kg mole of methane gas
T = 298;//T is the constant temperature in K
P1 = 1;//P1 is the initial pressure of the system
P2 = 100;//P2 is the final pressure of the system
R = 8314.4;//R is the gas constant in Nm/Kgmole deg K

//To compute the work required
//(i)Using ideal gas law
W = R*T*log(P1/P2);
mprintf('(i)Work done by the system if the gas obeys ideal gas law is %4.2e Nm',W);

//(ii)Using Vander Waals' equation
//Given
//For methane
a = 2.32*(10^5);//Vander Wals' constant a in N/m^2
b = 0.0428;//Vanderwaals' constant b in m^3
//V1 and V2 are evaluated by trial and error using Vanderwaals' equation as P1 and P2 are known
V1 = 11.1;//initial volume of the gas in m^3
V2 = 0.089;//final volume of the gas in m^3
W = (R*T*log((V2-b)/(V1-b)))+(a*((1/V2)-(1/V1)))
mprintf('\n (ii)Work done by the system if the gas obeys Vander Waals equation is %4.2e Nm',W);
//end