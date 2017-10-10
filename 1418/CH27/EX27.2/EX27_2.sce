//EXAMPLE 27.2
//8-POLE GENERATOR

clc;
funcprot(0);

//Variable Initialisation
P=8;......//Total number of poles
Z=722;.....//Total number of conductors
V=500;.......//Termiinal voltage in Volts
Ia=200;........//Armature current in Amperes
Z=1280;......//Total number of conductors
as=160;........//Total number of armature segments
ba=4;..........//Advancement in brushes from no-load neutral axis
Al=P;...........//Number of parallel paths in a 

I=Ia/P;.....//Current per path in Amperes
b=ba*360/as;......//Brush lead in degrees


ATdpole=Z*I*b/360;.....//Armatuue demagnetizing ampere-turns per pole
disp(ATdpole,"Armatuue demagnetizing ampere-turns per pole:");
ATepole=Z*I*((1/(2*P))-(b/360));.......//Armature cross-magnetizing ampere-turns per pole
disp(ATepole,"Armature cross-magnetizing ampere-turns per pole:");


