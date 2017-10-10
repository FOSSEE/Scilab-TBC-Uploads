// Exa 13.2

clc;
clear;

// Given data
Ra=5; // (R1+R2) in k Ohms
Rb=5;// (R3+R4) in k Ohms
Vt=5; // Applied voltage (V)
Shaft=5; // Shaft distance in inches

// Solution

disp(" As given, wiper moves 0.5 inch towards A from the centre, it will have moved 3 inches from B");
Wiper=3; // Wiper movement from B in inches
Wiper1=2.5;//Wiper movement from A in inches
R2=Wiper/Shaft * R; // in k Ohms
R4=Wiper1/Shaft * R; // in k Ohms
//Ve=VR2-VR4
Vc=(R2/(Ra)) *Vt - (R4/(Rb)) * Vt;

printf(' The new value of Vc= %.1f V \n',Vc);