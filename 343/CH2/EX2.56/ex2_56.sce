clc
R=20;             //Assigning values to parameters
L=31.8*10^-3;
V=230;
f=50;
I1=V/R;
Xl=2*%pi*f*L;
I2=V/Xl;
I=sqrt(I1*I1+I2*I2);
pf=I1/I;
P=V*I*pf;
disp("Amperes",I,"Line current");
disp(pf,"Power factor");
disp("Watts",P,"Power consumed");