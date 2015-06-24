//Page Number: 652
//Example 12.7
clc;
//Given
Zl=25+25*%i; //ohm
Z0=50; //ohm

T=(Zl-Z0)/(Zl+Z0);
p=sqrt((real(T))^2+(imag(T))^2);
disp(p,'Reflection coefficient:');

vswrr=(1+p)/(1-p);
disp(vswrr,'VSWR:');

//Fraction of power delivered
Pd=1-(p^2);
Pdp=Pd*100;
disp('%',Pdp,'Fraction of power delivered:');
