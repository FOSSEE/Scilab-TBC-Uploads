//Calculate the Energy of Helium ion its first excited state

//Example 43.1

clear;

clc;

Rhc=13.6;//Product of Rydberg's Constant, Plancks Constant and Speed of Light (Rhc) in eV

Z=2;//Atomic Number for Helium Ion

n=2;//First Excited State

E=-Rhc*Z^2/n^2;//Energy of Helium Ion in the first excited state in eV

printf("Energy of Helium Ion in the first excited state = %.1f eV",E);
