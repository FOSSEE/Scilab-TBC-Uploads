//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.2w
//calculation of the elongation of the rope and corresponding change in the diameter

//given data
L=4.5//length(in m) of the nylon rope
d=6*10^-3//diameter(in m) of the nylon rope
T=100//weight(in N) of the monkey
Y=4.8*10^11//Young modulus(in N/m^2) of the rope
Pr=.2//Poission ratio of nylon

//calculation
A=%pi*(d/2)^2//area of cross section
l=(T*L)/(A*Y)//elongation
deltad=(Pr*l*d)/(L)//change in diameter

printf('the elongation of the rope is %3.2e m',l)
printf('\nthe corresponding change in the diameter is %3.1e m',deltad)
