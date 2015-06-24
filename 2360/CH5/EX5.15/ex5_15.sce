// Exa 5.15
format('v',7);clc;clear;close;
// Given data
P = 1000;// in ohm
Q = 1000;// in ohm
p = 1000;// in ohm
q = 1000;// in ohm
S = 0.001;// in ohm
R = (P/Q)*S;// in ohm
disp(R,"The value of unknown resistance in Ω is");
Rb = 5;// in ohm
V = 100;// in V
I = V/(Rb+R+S);// in A
disp(I,"The current through the unknown resistance in A is");
R = R*0.1;// in ohm
// Vac = ( (R+r+S)/(Rb+R+r+S) )*V;
Vac = ((R+S)/(Rb+R+S))*V;// in V .. correction
Vab = (P/(P+Q))*Vac;// in V
Vab = Vab * 10^3;// in mV
// Vamd = (R + (Pr/(p+q+r)))/(R+S+(((p+q)*r)/(p+q+r)));
Vamd = (R/(R+S))*Vab*10^-3;// in V
Vamd = Vamd * 10^3;// in mV
Vout = Vab - Vamd;//output voltage in mV
Vout = Vout*10^-3;// in V
disp(Vout,"The output voltage in V is");
