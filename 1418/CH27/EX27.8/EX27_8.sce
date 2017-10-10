//EXAMPLE 27.8
//DC MACHINE

clc;
funcprot(0);

//Variable Initialization
V=400;.....//Terminal voltage in Volts
Ia=1000;....//Armature current in Amperes
P=10;.....//Total number of poles
Z=860;......//Total number of conductors
papp=70;......//Pole arc by pole pitch in Percentage
Al=P;...........//Number of parallel paths in a lap wound generator

I=Ia/Al;.......//Current in each armature conductor in Amperes
ATpole=(papp/100)*Z*I/(2*P);......//AT per pole for compensating winding
disp(ATpole,"AT per pole for compensating winding:");
