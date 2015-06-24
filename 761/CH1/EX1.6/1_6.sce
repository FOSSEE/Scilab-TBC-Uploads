clc;
// page no 21
// prob no 1.6
// given: FM broadcast receiver :- Vn=10uV, R=75V, B=200 kHz 
Vn=10;//in uV
R=75; B=200*10^3;
//By Ohm's law
In=Vn/R;
disp('uA',In,'Noise current is');
// Noise votlage is also given as In=sqrt(2*q*Io*B)
q=1.6*10^-19;
// solving this for Io=In^2/2*q*B;
Io=(In*10^-6)^2/(2*q*B);
disp('A',Io,'current through the diode is');