//Page Number: 26
//Example 1.12
clc;
//Given
Z0=50; //ohm
T=2.23;

//From chart
zl=2+%i;
ZLd=Z0*zl;
disp('ohm',ZLd,'Normalized impedance:');

//Impedance of device is by negating the real part
imp=-real(ZLd)+(imag(ZLd)*%i);
disp('ohm',imp,'Impedance of device:');


