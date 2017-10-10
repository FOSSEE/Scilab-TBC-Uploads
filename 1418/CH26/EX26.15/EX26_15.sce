//4-POLE LONG SHUNT GENERATOR
//EXAMPLE 26.15

clc;
funcprot(0);

//Variable Initialisation
N=1200;.................//Speed of  the generator in rpm
Po=25;.................//Output power in Kilo Watts
P=4;....................//Number of poles
V=500;..................//Terminal voltage in Volts
E=240;..................//Induced voltage at rated speed in Volts
Ra=0.03;...............//Armature resistance in Ohms
Rse=0.04;.............//Series field resistance in Ohms
Rsh=200;...............//Shunt field resistance in Ohms
Vb=1*2;...............//Brush drop in Volts
Phi=0.02;..........//Air gap flux per pole in Webers
Al=P;...............//Number of parallel paths in lap wound generator

I=(Po*10^3)/V;.............//Load currrent in Amperes
Ish=V/Rsh;....................//Current across shunt field resistance in Amperes
Ia=I+Ish;.............//Armature current in Amperes
Vse=Ia*Rse;..........//Series field drop in Volts
Va=Ia*Ra;............//Armature drop in Volts
E=V+Vse+Va+Vb;..........//Generated EMF in Volts
disp(E,"Generated EMF in Volts:");

Z=E*60*Al/(Phi*N*P);..............//Total number of conductors
y=round(Z);....................//Rounding of decimal places
disp(y,"Total number of conductors:");
