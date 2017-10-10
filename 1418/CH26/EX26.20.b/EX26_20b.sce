//EXAMPLE 26.20(b)
//4-POLE SHUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
P=4;.........................//Total number of poles
Rf=125;........................//Field resistance in Ohms
Ra=0.2;..........................//Armature resisitance in Ohms
Al=P;........................//Number of parallel paths in a lap wound generator
Z=300;.....................//Total number of conductors
Phi=0.1;.................//Flux per pole in Weber
I=90;.....................//Load current in Amperes
N=1000;........................//Speed of the generator in rpm

E=(Phi*P*N*Z)/(60*Al);..............//Generated EMF in Volts
disp(E,"Generated EMF in Volts:");
If=E/Rf;................//Field current in Amperes
Ia=I+If;................//Armature current in Amperes
Va=Ia*Ra;................//Armature drop in Volts
V=E-Va;..................//Terminal voltage in Volts

disp(V,"Terminal voltage in Volts:");




