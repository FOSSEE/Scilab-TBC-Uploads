//Page Number: 390
//Example 8.2
clc;
//Given
Rf=1; //ohm
Rr=4; //ohm
Ls=0.3D-9; //H
Cj=0.1D-12; //F
f=3.18D+9; //Hz
Z0=50; //ohm

Zf=Rf+(%i*round(2*%pi*f*Ls));
Zr=Rr+(%i*(round(2*%pi*f*Ls)-(1/(2*%pi*f*Cj))));

//Series Configuration
disp('Series Configuration');

//Insertion Loss
x=(2*Z0)/((2*Z0)+Zf);
x1=sqrt((real(x))^2+(imag(x))^2);
IN=-20*log10(x1);
disp('dB',IN,'Insertion Loss:');

//Isolation Loss
y=(2*Z0)/((2*Z0)+Zr);
y1=sqrt((real(y))^2+(imag(y))^2);
IS=-20*log10(y1);
disp('dB',IS,'Isolation Loss:');

//Shunt Configuration
disp('Shunt Configuration');

//Insertion Loss
a=(2*Zr)/((2*Zr)+Z0);
a1=sqrt((real(a))^2+(imag(a))^2);
INs=-20*log10(a1);
disp('dB',INs,'Insertion Loss:');

//Isolation Loss
b=(2*Zf)/((2*Zf)+Z0);
b1=sqrt((real(b))^2+(imag(b))^2);
ISs=-20*log10(b1);
disp('dB',ISs,'Isolation Loss:');
