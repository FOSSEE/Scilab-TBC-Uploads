clc;
// page no 201
// prob no 6_3_3
// RC pase shift oscillator
// All resistors are in Kohm
f=1000; Ro=5;
//Choose R>> R0 to minimize the effects of R0 on frequency. Select R=100kohm
R=100;
c=1/(2*%pi*f*R*sqrt(6+(4*R0/R)))*10^9;
disp('pF',c,+'The value of capacitor is ');
// The required open -circuit voltage gain is 
Ao= 29+23*(Ro/R)+4*(Ro/R)^2;
disp(Ao,'1.The required open -circuit voltage gain is');
gm=Ao/Ro;
disp('mS',gm,+'2.The value of gm is');