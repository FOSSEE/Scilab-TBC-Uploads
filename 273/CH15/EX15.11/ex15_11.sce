clc;clear;
//Example 15.11
//calculation of final energy 

//given values
B=.4;//max magnetic field in Wb/m^2
c=3*10^8;
e=1.6*10^-19;
d=1.52;//diametre in m
r=d/2;

//calculation
E=B*e*r*c;//E=pc,p=mv=Ber
disp(E,'final energy of e(in J) is');
E1=(E/e)/10^6;
disp(E1,'final energy of e (in MeV) is');