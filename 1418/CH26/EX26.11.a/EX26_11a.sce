//EXAMPLE 26.11(a)
//8-POLE DC SHUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
P=8;.....................//Number of poles 
Z=778;.....................//Number of conductors
N=500;..................//Speed of the generator in rpm
Rl=12.5;................//Load resistance in Ohms
Ra=0.24;.................//Armature resistance in Ohms
Rf=250;..................//Field resistance in Ohms
V=250;...................//Terminal voltage in Volts
Aw=2;....................//Number of parallel paths for wave winding

Il=V/Rl;....................//Load current in Amperes
Ish=V/Rf;...................//Shunt current in Amperes
Ia=Il+Ish;.................//Armature current in Amperes
Eg=V+(Ia*Ra);...............//Induced EMF in Volts
Phi=Eg*60*Aw/(Z*N*P);...........//Flux per pole in Webers
y=Phi*1000;.....................//Flux per pole in Mili Webers
y1=round(y*100)/100;...........//Rounding of decimal places
disp(y1,"Flux per pole in Mili Webers:");
