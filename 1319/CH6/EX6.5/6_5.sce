// Calculate Load Current in a shunt generator

clc;
clear;

E=127;
V=120;
Ra=0.02;
Rf=15;// Field Resistance

Ish=V/Rf;

Ia=(E-V)/Ra;

Il=Ia-Ish;

printf('The load current = %g A \n',Il)
