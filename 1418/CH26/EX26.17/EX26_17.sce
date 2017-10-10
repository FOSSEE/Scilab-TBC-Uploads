//EXAMPLE 26.17
//4-POLE DC SHUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
N=900;.................//Speed of  the generator in rpm
P=4;....................//Number of poles
Phi=0.07;..........//Flux per pole in Webers
T=220;.............//Number of turns in armature winding
Rw=0.004;..........//Resistance per turn in Ohms
Al=P;...............//Number of parallel paths in lap wound generator
Ia=50;............//Armature current in Amperes

Z=T*2;.....................//Total number of conductors
E=(Phi*P*N*Z)/(60*Al);.....................//Generated EMF in Volts
disp(E,"Generated EMF in Volts:");

Rtc=T*Rw;.....................//Total resistance of 220 turns in Ohms
Rp=Rtc/Al;...................//Resistance of each path in Ohms
Ra=Rp/Al;...................//Armature resistance in Ohms
Va=Ia*Ra;....................//Armature drop in Volts
V=E-Va;......................//Terminal voltage in Volts
disp(V,"Terminal voltage in Volts:");
