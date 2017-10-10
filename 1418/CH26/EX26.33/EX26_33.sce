//EXAMPLE 26.33
//4-POLE DC SHUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
P=4;........//Total number of poles
Al=P;.......//Number of parallel paths in Lap wound generator
Aw=2;.......//Number of parallel paths in Wave wound generator
N=600;.......//Speed of the generator in rpm
E=216;.........//Generated EMF in Volts
S=144;........//Total number of slots
C=6;............//Total number of conductors per slot
N1=500;............//Speed of the generator when it is rewound in rpm
Z=S*C;............//Total number of conductors

Phi=(E*60*Al)*1000/(P*N*Z);......//Flux per pole in Mili Webers
disp(Phi,"Flux per pole in Mili Webers:");

E1=(Phi*P*N1*Z)/(60*Aw*1000);........//Generated EMF if the generator is wave wound in Volts
disp(E1,"Generated EMF if the generator is wave wound in Volts:");
