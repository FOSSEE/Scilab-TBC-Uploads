clc;clear;
//Example 1.8

//given values
Q=3.2*10^-19;//charge on alpha-particle in C
m=6.68*10^-27;//mass on alpha-particle in kg
B=1.5;//transverse magnetic field of flux density in Wb/(m^2)
v=5*10^6;//velocity of alpha-particle in m/s

//Calculation
F=B*Q*v;//
disp(F,'The force(in N) on particle is');
R=m*v/(Q*B);//
disp(R,'The radius(in m) of its circular path')