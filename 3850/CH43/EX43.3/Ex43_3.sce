

//To Calculate the Energy needed to remove the electron from the ion

//Example 43.3

clear;

clc;

E1=40.8;//Excitation Energy of Hydroen like ion inits first excited state in eV

K=13.6;//Value of constant Rhc = 13.6 eV

n1=1;//n=1 for the first orbit

n2=2;//n=2 for the second orbit

Z=sqrt(E1/(K*((1/n1^2)-(1/n2^2))));//Atomic Number of Hydrogen like ion

E=-K*Z^2;//Energy needed to remove the electron from the ion in eV

printf("Energy required to remove the electron from the ion = %.1f eV",E);
