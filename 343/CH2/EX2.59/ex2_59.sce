clc
Z1=10+%i*15;         //Assigning values to parameters
Z2=6-%i*8;
I=15;
Z=(Z1*Z2)/(Z1+Z2);
V=I*Z;
I1=V/Z1;
I2=V/Z2;
P1=I1^2*real(Z1);
P2=I2^2*real(Z2);
disp("Watts",polar(P1),"Power taken by branch 1");
disp("Watts",polar(P2),"Power taken by branch 2");