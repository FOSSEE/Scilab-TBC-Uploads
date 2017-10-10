//Phase voltage Vp, Impedance Z
close();
clear;
clc;
Vp = 120;//V
Z = 36 + %i*48;//ohm
//Line Voltage 'Vl'
Vl = 3^(1/2)*Vp;
Ip = Vp/polar(Z);
Il = Ip;
R = real(Z);
//Power factor 'Pf'
Pf = R/polar(Z);
P = 3^(1/2)*Vl*Il*Pf;
mprintf('Line voltage Vl = %0.1f V\nLine current Il = %0.0f A\nPower factor = %0.1f lagging \nPower P = %0.0f W',Vl,Il,Pf,P);