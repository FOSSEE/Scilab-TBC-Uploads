clc;clear;
//Example 22.1
//calculation of magnetic field

//given values

Tc=7.2;//transition temp in K
T=5;//temp in K
Hc=3.3*10^4;//magnetic field at T in A/m


//calculation
Hc0=Hc/(1-(T^2/Tc^2));
disp(Hc0,'max value of H at 0K (in A/m) is ');
