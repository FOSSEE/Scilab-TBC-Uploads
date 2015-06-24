clc;funcprot(0);//Example 9.4
//Initilisation of Variables
T=1000;....//Inside surface temparature of spherical furnance in K
d=0.005;...//Diameter of hole in m
R=5.67*10^-8;.....//Stefens boltsman constant 
A=(%pi*d^2)/4;....//Area of spherical furnance in m^2
//calculations
Eb=A*R*T^4;....//Total emissive power as per stefen boltsmen law in W/m^2
disp(Eb,"Total emissive power as per stefen boltsmen law in W/m^2:")
