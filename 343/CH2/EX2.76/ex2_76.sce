clc
V=200;          //Assigning values to parameters
Z1=3+4*%i;
Z2=4-%i*3;
Z3=4.57+%i*5.51;
Y1=1/Z1;
Y2=1/Z2;
Yab=Y1+Y2;
Zab=1/Yab;
Z=Zab+Z3;
I=V/Z;
[r,t]=polar(Z);
pf=cos(t);
disp("Ohms",Z,polar(Z),"Total Impedance");
disp("Amperes",I,polar(I),"Supply current");
disp(pf,polar(pf),"Power factor");