//EXAMPLE 26.10
//DC SHUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
Vi=127;...............//Induced voltage on open circuit in Volts
V1=120;...............//Terminal voltage on load in Volts
Rf=15;............//Field circuit resistance in Ohms
Ra=0.02;..........//Armature resistance in Ohms
Ia=8.47;..........//Armature current in Amperes
If=8;.............//Field current in Amperes

//Generator on no load 
Eg=Vi+(Ia*Ra);..........//EMF generated in the armature in Volts
y=round(Eg*100)/100;
disp(y,"EMF generated in the armature in Volts:");

//Generator on load
Ia=(Eg-V1)/Ra;
y=round(Ia*10)/10;.............//Armature current in Amperes
Il=y-If;.........//Load current in Amperes
disp(Il,"Load current in Amperes:");





