//example 5.40

clear;
clc;

disp("N2(g)+3H2(g)<=>2NH3(g)");

//Given:
Kp1=5.85*10^5;//equilibrium constant at 298K
H1=-46.11;//standard enthalpy of formation of NH3(g)[KJ/mol]
T1=298;//Initial temperature[K]
T2=423;//Final temperature[K]
R=8.314;//Universal gas constant[J/K/mol]

//To find the Kp at 423K temperature
H=2*H1;//enthalpy for reaction;[KJ]
t=(T1^-1)-(T2^-1);
x=-H*t/(R*0.001);
Kp2=Kp1*exp(x);
disp(Kp2,'The Equilibrium constant for reaction  at 423K is ');








