close();
clear;
clc;
//resistance 'R1' at 'T1' degree C,resistance 'R2' at 'T2' temperature
T1 = 20; //degree C
T2 = 80; //degree C
R1 = 4; //ohm
R2 = 4.52; //ohm
A = [1 T1;1 T2];
C = [R1;R2];
B = inv(A)*C;
//temperature coefficient of resistance of material 'a'
aRo = B(2,1); //a*Ro
Ro = B(1,1);
a = aRo / Ro;
mprintf("(a) Temperature coefficient of resistance of the material, a = %0.2e per degree C\n\n",a);
//Resistance of coil at 100 degree C
R100 = Ro*(1 + 100*a); //ohm
mprintf("(b) Resistance of coil at 100 degree C, R100 = %0.2f ohm",R100);