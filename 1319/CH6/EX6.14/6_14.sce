// Induced EMF and Armature current in a long shunt compound generator

clc;
clear;

Il=50; // Load Current
Vl=500; // Load Voltage
Ra=0.05; // Armature Resistance
Rfs=0.03; // Series Field Resistance
Rfp=250; // Shunt Field Resistance
Vb=2; // Contact drop 

Ish=Vl/Rfp;

Ia=Il+Ish;

E=Vl+(Ia*(Ra+Rfs))+Vb; // Induced EMF

printf('The Induced EMF and Armature Current is %g V and %g A respectively \n',E,Ia)

