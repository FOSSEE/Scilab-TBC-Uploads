//EXAMPLE 26.16
//4-POLE DC GENERATOR

clc;
funcprot(0);

//Variable Initialisation
N=750;.................//Speed of  the generator in rpm
P=4;....................//Number of poles
E=240;..................//Terminal voltage in Volts
Z=792;.................//Total number of conductors
Phi=0.0145;..........//Air gap flux per pole in Webers
Aw=2;...............//Number of parallel paths in wave wound generator

Phi1=E*60*Aw/(P*N*Z);
y=round(Phi1*10000)/10000;
lc=Phi/Phi1;...................//Leakage Coefficient
y1=round(lc*10)/10;
disp(y1,"Leakage coefficient:");


