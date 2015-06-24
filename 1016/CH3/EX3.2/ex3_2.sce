clc;clear;
//Example 3.2

//given values
Z=1;//atomic number of hydrogen
e=1.6*10^-19;//electron charge in C
pi=3.14;//standard constant
h=6.625*10^-34;//plank's constant in J-s
m=9.1*10^-31;//mass of an electron in kg
Eo=8.854*10^-12;//absolute permitivity of free space in F/m
c=3*10^8;//speed of light in m/s
n=1;//ground state

//calculation
v=9*10^9*(2*pi*Z*e^2)/(n*h);
disp(v,'velocity(in m/s) of ground state');
r=(Eo*n^2*h^2)/(pi*m*e^2);
disp(r,'radius(in m) of Bohr orbit in ground state')
t=(2*pi*r)/v;
disp(t,'time taken(in s) by electron to traverse the bohr first orbit');
R=(m*e^4)/(8*Eo^2*h^3*c);
disp(R,'Rhydberg contstant (in  m^-1)')