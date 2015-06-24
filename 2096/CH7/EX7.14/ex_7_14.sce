//Example 7.14 // resistance
clc;
clear;
close;
//given data :
alfa=20*10^-6; //resistance temperature coefficient in per degree celcius
R=120; // in ohm
E=400; // in MN/m^2
Gf=2;
Me=200*10^9; // modulus of elasticity in N/m^2
Cs=(1/10)*E*10^6; // in N/m^2
e=Cs/Me;
dR=R*Gf*e*10^3; // 
t=20; // temerature in degree celcius
dR1=R*alfa*t*10^3;
disp(dR,"resistance due to change in stress,dR(m-ohm) = ")
disp(dR1,"resistance due to change of temperature,dR1(m-ohm) = ")
//ANSWER IS WRONG IN THE TEXTBOOK
