
//To Calculate the Capacitance of a parallel plate capacitor

//Example 31.3

clear;

clc;

a=20*10^-2;//Length of Side of Parallel Plate Capacitor

A=a^2;//Area of the Capacitor Plate

d=1*10^-3;//Separation between the two plates

e0=8.85*10^-12;//Permitivity in farad/meter

C=e0*A/d;//Formula for finding capacitance of parallel plate capacitor

printf("capacitance of the parallel plate capacitor=%f pF",C*10^12);
