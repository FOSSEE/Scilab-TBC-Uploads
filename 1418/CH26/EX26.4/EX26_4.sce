//EXAMPLE 26.4
//LONG SHUNT COMPOUND GENERATOR

clc;
funcprot(0);

//Variable Initialisation
I=50;.............//Load current in Amperes
V=500;.............//Terminal voltage in Volts
Rsh=250;............//Resistance of shunt field in Ohms
Ra=0.05;...........//Resistance of armature in Ohms
Rse=0.03;.........//Resistance of series field in Ohms
Vb=2*1;............//Brush drop in Volts

Ish=V/Rsh;..........//Current through shunt field in Amperes
Ia=I+Ish;...........//Armature current in Amperes
Va=Ia*Ra;..........//Armature voltage drop in Volts
Vse=Ia*Rse;........//Voltage drop on series field in Volts


Eg=V+Va+Vb+Vse;..........//EMF generated in the armature in volts
disp(Eg,"EMF generated in the armature in Volts");
