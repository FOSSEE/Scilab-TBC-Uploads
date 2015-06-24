//Calculate the fully-load speed of the motor
//Chapter 2
//Example 2.21
//page 126
clear;
clc;
disp("Example 2.21")
P=4;..................//pole
V=500;................//shunt motor  in volts
Ia=60;......................//armature current in amperes
Ra=0.2;..........................//armature resistance in ohms
E=V-(Ia*Ra)-2;
printf("voltage drop across each brush=%fV",E)
phi=0.03;.................................//flux per pole in Wb
Z=720;.....................................//total armature current in volts
A=2;
N=(E*60*A)/(phi*Z*P)
printf("\nfull load speed of the motor=%frpm",N)