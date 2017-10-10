//EXAMPLE 26.18
//4-POLE LONG SUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
N=900;.................//Speed of  the generator in rpm
P=4;....................//Number of poles
Rse=0.02;.............//Series field resistance in Ohms
Rsh=100;...............//Shunt field resistance in Ohms
Phi=0.07;..........//Air gap flux per pole in Webers
Al=P;...............//Number of parallel paths in lap wound generator
T=220;.............//Number of turns in armature winding
Rw=0.004;..........//Resistance per turn in Ohms
Ia=50;.............//Armature current in Amperes

Z=T*2;....................//Total number of conductors
E=(Phi*P*N*Z)/(60*Al);.............//Generated EMF in Volts
disp(E,"Generated EMF in Volts:");
Rtc=T*Rw;.....................//Total resistance of 220 turns in Ohms
Rp=Rtc/Al;...................//Resistance of each path in Ohms
Ra=Rp/Al;...................//Armature resistance in Ohms
Rca=Ra+Rse;..................//Armature circuit resistance in Ohms
Va=Ia*Rca;...................//Armature circuit drop in Volts
V=E-Va;.......................//Terminal voltage in Volts
disp(V,"Terminal voltage in Volts:");
Ish=V/Rsh;....................//Current through in shunt field in Amperes
y=round(Ish*100)/100;.............//Rounding of decimal places
I=Ia-y;..........................//Load current in Amperes
Po=V*I;................//Output power in Kilo Watts
y1=round(Po);
disp(y1,"Output power in Kilo Watts:");
