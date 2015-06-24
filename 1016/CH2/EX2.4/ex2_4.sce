clc;clear;
//Example 2.4

//given values
V=6920;//potential difference in V
d=1.3*10^-3;//distance between in m
v=1.9*10^-4;//velocity in m/s
p=0.9*10^3;//density of oil in kg/m^3
n=1.81*10^-5;//coefficient of viscosity in N-s/m^2
g=9.81;//accelaration due to gravity in m/s^2
pi=3.14;//standard constant

//calculation
a=sqrt((9*n*v)/(2*g*p));
disp(a,'The radius(in m) of the drop is');
E=V/d;
Q=4*pi*(a^3)*p*g/(3*E);
disp(Q,'The value of charge(in C) on oil drop is')