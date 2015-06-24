//Page Number: 652
//Example 12.6
clc;
//Given
Z0=50; //ohm
p=2.4;
L=0.313;
x=2*%pi*L;
y=tan(x);

Zl=(Z0*(1+(p*p*%i)))/(p+(p*%i));
T=(Zl-Z0)/(Zl+Z0);
p=sqrt((real(T))^2+(imag(T))^2);
disp(p,'Reflection coefficient:');

