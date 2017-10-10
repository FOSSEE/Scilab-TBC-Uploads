//EXAMPE 26.20(a)
//4-POLE DC SHUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
V=poly(0,'V');
P=4;.........................//Total number of poles
Rsh=100;........................//Shunt field resistance in Ohms
Ra=1;..........................//Armature resisitance in Ohms
Aw=2;........................//Number of parallel paths in a wave wound generator
Z=378;.....................//Total number of conductors
Phi=0.02;.................//Flux per pole in Weber
Rl=10;.....................//Load resistance in Ohms
N=1000;..................//Speed of the generator in rpm

Eg=(Phi*P*N*Z)/(60*Aw);....................//Generated EMF in Volts
disp(Eg,"Generated EMF in Volts:");
Ia=V/10+V/100;...........................//Load current(V/10)+Shunt current(V/100) in Amperes
V1=Eg-(Ia*Ra)-V;.......................//Equation for terminal voltage in Volts
r=roots(V1);...........................//Solution to the above equation
y=round(r);............................//Rounding of decimal places
disp(y,"Terminal voltage in Volts:");
I=y/Rl;...........................//Load current in Amperes
disp(I,"Load current in Amperes:");
Pa=y*I;.........................//Power absorbed by the load in Watts
y1=round(Pa);.......................//Rounding of decimal places
disp(y1,"Power absorbed by the load in Watts:");






