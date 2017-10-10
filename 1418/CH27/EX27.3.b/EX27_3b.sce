//EXAMPLE 27.3(b)
//4-POLE GENERATOR

clc;
funcprot(0);

//Variable Initialisation
P=4;...........//Total number of poles
Z=480;..........//Total number of conductors
Ia=150;...........//Armature current in Amperes
b=10;...........//Actual brush lead in degrees
Al=P;............//Number of parallel paths in a lap wound generator

I=Ia/Al;.....//Current per path in Amperess
ATd=Z*I*b/360;.......//Demagnetizing ampere-turns per pole
ATe=Z*I*((1/(2*P))-(b/360));.....//Cross-magnetizinfampere-turns per pole
disp(ATd,"Demagnetizing ampere-turns per pole:");
disp(ATe,"Cross-magnetizing ampere-turns per pole:");




