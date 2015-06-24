clc;clear;
//Example 1.6
//Calculation of energy in eV,MeV,J

//given values
V=5*10^6;//potential differnce through which alpha-particle is accelerated
e=1.6*10^-19;//charge on electron in C

//calculation
E1=2*V;//electronic charge on alpha-particle is 2e Coulombs
disp(E1,'The energy in eV is');
E2=E1/10^6;//energy in MeV
disp(E2,'The energy in MeV is');
E3=E1*e;//energy in Joules
disp(E3,'The energy in J is')