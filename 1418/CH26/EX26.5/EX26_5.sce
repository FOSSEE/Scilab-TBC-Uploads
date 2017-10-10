//EXAMPLE 26.5
//SHORT SHUNT COMPOUND GENERATOR

clc;
funcprot(0);

//Variable Initialisation
I=30;.............//Load current in Amperes
V=220;.............//Terminal voltage in Volts
Rsh=200;............//Resistance of shunt field in Ohms
Ra=0.05;...........//Resistance of armature in Ohms
Rse=0.30;.........//Resistance of series field in Ohms
Vb=2*1;..............//Brush drop in Volts

Vse=I*Rse;........//Voltage drop on series field in Volts
Vsh=V+Vse;........//Voltage drop on shunt field in Volts
Ish=Vsh/Rsh;..........//Current through shunt field in Amperes
Ia=I+Ish;...........//Armature current in Amperes
Va=Ia*Ra;..........//Armature voltage drop in Volts

y=round(Va*100)/100;............//Rounding of decimal places

Eg=V+y+Vb+Vse;..........//EMF generated in the armature in Volts
disp(Eg,"EMF generated in the armature in Volts:");
