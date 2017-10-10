// Internal Voltage drop in an alternator

clc;
clear;

If=10;
Voc=900; // Open Circuit Voltage

Isc=150; // Short Circuit Current

Zs=Voc/Isc;

I=60; // Load current

Vd=I*Zs; // Internal Voltage Drop

printf('The internal voltage drop with a load current of 60 A = %g V \n',Vd)
