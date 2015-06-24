//Chemical Engineering Thermodynamics
//Chapter 3
//First Law of Thermodynamics

//Example 3.13
clear;
clc;

//Given
//Q=W=delPE=delKE=0;
//M2=0; no exit stream
Ti = 288;//initial temperature in K
H = 7*Ti;//enthalpy of air in Kcal/Kgmole
Ei = 5*Ti;// initial internal energy of air in Kcal/Kgmole
//Ef=5*Tf;Final internal energy of air in Kcal/Kgmole
Pi = 0.3;//initial pressure in atm
V = 0.57;//volume of the tank in m^3
R = 848;//gas constant in mKgf/Kg mole K
Pf = 1;//final prssure in atm

//To calculate the final weight and the final temperature of the air in the tank
Mi = (Pi*V*1.03*10^4)/(R*Ti);//initial quantity of air in tank in Kg mole
//Tf=(Pf*V*1.033*10^4)/(Mf*R)..(a) final temperature,Mf=final quantity of air in tank in Kg mole
//M1=Mf-Mi..(b) M1 is mass of steam added in Kg mole
//H*M1=(Ef*Mf)-(Ei*Mi)
//H*M1=((5*Pf*V*1.033*10^4)/(Tf*R))*Tf-(Ei*Mi)...(c)
A = [1 -1;0 -H];
B = [Mi;((Ei*Mi)-((5*Pf*V*1.03*10^4)/R))];
x = A\B;
Mf = x(1);
mprintf('The final weight of air in the tank is%f Kg',Mf);

Tf = (Pf*V*1.03*10^4)/(Mf*R);
mprintf('\n The final temperature of air in the tank is %f K',Tf);
//end