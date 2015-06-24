//A Textbook of Chemical Engineering Thermodynamics
//Chapter 2
//First Law of Thermodynamics
//Example 13


clear;
clc;


//Given:
R = 8.314; //ideal gas constant(kJ/kmol K)
Cv = 20.8; //specific heat capacity at constant volume(kJ/kmol K)
Cp = 29.1; //specific heat capacity at constant pressure(kJ/kmol K)
P1 = 10; //initial pressure(bar)
T1 = 280; //initial temperature in K
P2 = 1; //final pressure(bar)
T2 = 340; //final temperature(K)

//To determine the change in internal energy and change in enthalpy
//Solution
n = 1; //basis: 1 kmol of ideal gas
V1 = (n*R*T1)/(P1*100); //initial volume in m^3
V2 = (n*R*T2)/(P2*100); //final volume in m^3

//Assuming the change in state is occuringalong the following two step process
//1. A constant volume process in which the pressure is reduced to the final value P2 and the temperature gets reduced to T2
//Let Po and Vodenote the pressure and volume of system after this step
Po = P2; 
Vo = V1;
To = (Po*100*Vo)/(n*R);
U1 = Cv*(To-T1);
H1 = U1+(V1*100*(P2-P1));
W1 = 0;
Q1 = U1;

//2. A constant pressure process in which the gas is heated to the final temperature T2 and the final volume V2
H2 = Cp*(T2-To);
U2 = H2-100*(V2-V1);
Q2 = H2;
W2 = Q2-U2;

//For actual process
U = U1+U2; //change in internal energy(kJ)
H = H1+H2; //change in enthalpy(kJ)
mprintf('Change in internal energy is %f kJ',U);
mprintf('\nChange in enthalpy is %f kJ',H);

//end