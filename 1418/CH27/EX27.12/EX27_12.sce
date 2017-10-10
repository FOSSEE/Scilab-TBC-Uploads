//EXAMPLE 27.12
//ARMATURE

clc;
funcprot(0);

//Variable Initialisation
P=4;.....//Total number of poles
N=1500;...//Speed in rpm
Ia=150;.........//Current in Amperes
Cs=64;.........//Total number of commutator segments
Wb=1.2;.......//Brush span in segments
L=0.05;........//Inductance of each armature in Mili Henry
Al=P;.........//Total nmber of parallel paths for a lap wound generator

I=Ia/Al;.......//Current per coil in Ampere

v=Cs*(N/60);.......//Peripheral velocity in segments/sec
Tc=Wb/v;...........//Time for each commutation in seconds
El=L*10^-3*2*I/Tc;..........//Reactance voltage for linear commutation in Volts
disp(El,"Reactance voltage for linear commutation in Volts:");

Es=1.11*El;...............//Reactance voltage for sinusoidal commutation in Volts
disp(Es,"Reactance voltage for sinusoidal commutation in Volts:");
