//EXAMPLE 26.13
//4-POLE DC GENERATOR

clc;
funcprot(0);

//Variable Initialisation
N=900;.................//Speed of  the generator in rpm
P=4;....................//Number of poles
V=220;..................//Terminal voltage in Volts
E=240;..................//Induced voltage at rated speed in Volts
Ra=0.2;...............//Armature resistance in Ohms
Phi=10*10^-3;..........//Air gap flux per pole in Mili Webers
T=8;.................//Armature turns per coil
Aw=2;.................//Number of parallel paths for wave winding

if E>V then printf("The machine is working as a generator as induced voltage is greater than terminal voltage \n");
    else printf("The machine is working as a generator as induced voltage is less than terminal voltage \n");
end

Ia=(E-V)/Ra;..........................//Armature current in Amperes
Z=E*Aw*600/(Phi*N*P);.................//Number of conductors
disp(Z,"Number of conductors:");
C=T*2;........................//Conductors per coil
Co=Z/C;........................//Total number of armature coils

disp(Co,"Total number of armature coils:");
