//EXAMPLE 26.32
//LONG SHUNT DC COMPOUND GENERATOR

clc;
funcprot(0);

//Variable Initialisation
Po=110;........//Output power in Kilo Watts
V=220;........//Terminal voltage in Volts
Ra=0.01;........//Armature resistance in Ohms
Rse=0.002;.......//Series field resistance in Ohms
Rsh=110;..........//Shunt field resistance in Ohms

I=(Po*1000)/V;.....//Load current in Amperes
Ish=V/Rsh;..........//Shunt field current in Amperes
Ia=I+Ish;..........//Armature current in Amperes
E=V+(Ia*(Ra+Rse));...//Generated EMF in Volts
disp(E,"Generated EMF in Volts:");
