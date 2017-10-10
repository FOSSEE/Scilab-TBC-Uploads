//EXAMPLE 27.13
//6-POLE MACHINE

clc;
funcprot(0);

//Variable Initialisation
P=6;.....//Total number of poles
Bg=0.5;.......//Flux density in the air-gap of the commutating pole in Wb/metre^2
Lg=4;........//Length of the air-gap in Mili Meter
Ia=500;....//Full load current in Amperes
Al=P;......//Total number of parallel paths in a lap wound generator
Z=540;......//Total number of conductors

I=Ia/Al;...//Current per conductor in Amperes
Ic=Ia/P;......//Coil current in Amperes
ammf=Z*Ic/(2*P);.....//Armature mmf
agmmf=Bg*Lg*10^-3/(4*3.14*10^-7);.....//Compole air-gap mmf
mcmmf=(10/100)*f;.......//mmf required for the rest of the magnetic circuit
r=round(mcmmf);...//Rounding of decimal places
agmmfT=agmmf+r;.........//Total compole air-gap mmf
mmfT=ammf+agmmf;.........//Total required mmf

T=mmfT/Ia;.......//Total number of turns on each commutating pole
r1=round(T);......//Rounding of decimal places
disp(r1,"Total number of turns on each commutating pole:");
