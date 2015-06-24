//example 5.38

clear;
clc;

disp("N2(g)+3H2(g)<=>2NH3(g)");
//Given:
T=298;//Temperature[K]
Gf1=-16450;//Gibb's free energy of formation for NH3(g)[J/mol]
R=8.314;//Universal gas constant[J/K/mol]

//To find the Kp value of the above reaction
Gf=2*Gf1//Gibb's free energy for the reaction[KJ]
x=Gf/R/T
Kp=exp(-x);
disp(Kp,'The Kp for above reaction is ');