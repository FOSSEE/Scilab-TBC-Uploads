//EXAMPLE 26.23
//6-POLE SHUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
V=250;..................//Terminal voltage in Volts
Po=10;.................//Output power in Kilo Watts
P=6;..................//Total number of poles 
N=1000;................//Speed of the generator in rpm
Al=P;..................//Number of parallel paths in a lap wound generator
Z=534;..................//Total number of conductors
Ra=0.4;......................//Armature resistance in Ohms
Lcu=0.64;................//Full load copper loss in Kilo Watts
Vb=1;....................//Brush drop in Volts

I=(Po*1000)/V;..............//Load current in Amperes
Ia=I;......................//Armature current in Amperes
Lacu=(Ra*Ia^2);............//Armature copper loss in Watts
Va=Ia*Ra;.................//Armature drop in Volts
E=V+Vb+Va;................//Generated EMF in Volts
Phi=(E*60*Al*1000)/(P*N*Z);....//Flux per pole in Mili Webers
disp(Phi,"Flux per pole in Mili Webers:");


