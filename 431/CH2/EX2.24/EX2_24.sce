//Calculate the fully-load speed of the motor
//Chapter 2
//Example 2.24
//page 128
clear;
clc;
disp("Example 2.24")
V=200;..............................//motor runs in volts
Ia=15;.............................//current taken in amperes
Ra=1;.................................//motor resistance in ohms
E1=V-(Ia*Ra);
printf("resistance when 1ohm=%fV",E1)
R=5;....................................//resistance 
E2=V-(Ia*(Ra+R))
printf("\nResistance when 5ohms connected in series=%fV",E2)
N1=800;............................//speed of motor in rpm
N2=N1*(E2/E1);
printf("\nspeed at which motor will run when resistance is 5ohms=%frpm",N2)