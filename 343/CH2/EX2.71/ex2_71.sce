clc
V=230;            //Assigning value to parameters
f=50;
Z1=8.66-5*%i;
Z2=10+17.32*%i;
Z3=40;
Y1=1/Z1;
Y2=1/Z2;
Y3=1/Z3;
Y=Y1+Y2+Y3;
Z=1/Y;
[r,t]=polar(Z);
I=V/Z;
pf=cos(t);
P=V*I*pf;
disp("Mho",Y1,polar(Y1),"Y1");
disp("Mho",Y2,polar(Y2),"Y2");
disp("Mho",Y3,polar(Y3),"Y3");
disp("Ohms",Y,polar(Y),"Equivalent Admittance");
disp("Ohms",Z,polar(Z),"Equivalent Impedance");
disp("Amperes",I,polar(I),"Total current");
disp("Watts",P,polar(P),"Power consumed");
disp(polar(pf),"Power factor");