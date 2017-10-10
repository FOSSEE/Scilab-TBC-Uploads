//EXAMPLE 26.3
//SHUNT FIELD GENERATOR

clc;
funcprot(0);

//Variable Initialisation
I=450;.............//Load current in Amperes
V=230;.............//Terminal voltage in Volts
Rsh=50;............//Resistance of shunt field in Ohms
Ra=0.03;...........//Resistance of armature in Ohms

Ish=V/Rsh;..........//Current through shunt field in Amperes
Ia=I+Ish;...........//Armature current in Amperes
Va=Ia*Ra;..........//Armature voltage drop in Volts

y=round(Va*10)/10;.........//Rounding of decimal places

Eg=V+y;..........//EMF generated in the armature in Volts
disp(Eg,"EMF generated in the armature in Volts:");


