//EXAMPLE 27.6
//DC GENERATOR

clc;
funcprot(0);

//Variable Initialisation
Z=500;......//Total number of conductors
Ia=200;......//Total current in Amperes
P=6;.........//Total number of poles
b=10;........//Angle of lead in degrees
y=1.3;...........//Leakage coefficient
Aw=2;...........//Number of parallel paths for wave wound generator

I=Ia/Aw;.....//Current per path in Amperes
ATepole=Z*I*((1/(2*P))-(b/360));...........//Cross magnetizing ampere-turns per pole
r=round(ATepole);.....//Rounding of decimal places
disp(r,"(a).Cross magnetizing ampere-turns per pole:");
ATdpole=Z*I*b/360;........//Demagnetizing ampere-turns per pole
r1=round(ATdpole);.......//Rounding of decimal places
disp(r1,"(b).Demagnetizing ampere-turns per pole:");
S=y*r1/Ia;.......//Series turns required to balance the demagnetizing ampere-turns
r2=round(S);....//Rounding of decimal places
disp(r2,"Series turns required to balance the demagnetizing ampere-turns:");
