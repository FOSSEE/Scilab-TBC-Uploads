//EXAMPLE 27.1
//4-POLE GENERATOR

clc;
funcprot(0);

//Variable Initialisation
P=4;......//Total number of poles
Z=722;.....//Total number of conductors
Ia=100;...//Armature current in Amperes
b=8;......//Brush lead in degrees
Aw=2;...//Number of parallel paths in a wave wound generator

I=Ia/Aw;..........//Current per path in Amperes
ATdpole=Z*I*b/360;....//Armature demagnetising ampere turns per pole
y=round(ATdpole);........//Rounding of decimal places
ATepole=Z*I*((1/(2*P))-(b/360));........//Cross magnetising ampere turns per pole
y1=round(ATepole);.............//Rounding of decimal places
disp(y,"Armature demagnetising ampere turns per pole:");
disp(y1,"Cross magnetising ampere turns per pole:");
