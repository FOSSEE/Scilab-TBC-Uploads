clc;clear;
//Example 1.1
//Comparision of electrostatic force of replusion between two particles with the gravitational forces between them

//given values
q1=3.2*10^-19;
q2=q1;//q1 and q2 are the values of charge on alpha-particle in C
d=10^-13;//distance between two alpha-particles in m
m1=6.68*10^-27;
m2=m1;//m1 and m2 are masses of alpha-particles in kg
G=6.67*10^-11;//Gravitational constant in N-(m^2)/(kg^2)

//calculation
F1=(9*10^9)*(q1*q2)/(d^2);//calculation of electrostatic force
disp(F1,'The electrosatic force(in N) is');
F2=G*(m1*m2)/(d^2);//calculation of electrostatic force
disp(F2,'The gravitational force (in N) is')