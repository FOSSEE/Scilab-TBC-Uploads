// Calculate the circuit parameters of a transformer using OC and SC tests

clc;
clear;

E1=200;
E2=400;

n=E2/E1; // Transformation ratio

// O.C Calculations
V1=200;
Ioc=0.7;
Pi=70;

R0=(V1^2)/Pi;

Iw=V1/R0;

Im=sqrt((Ioc^2)-(Iw^2));

X0=V1/Im;

//S.C Calculations on HT side

Pc=80;
I=10;
V=15;

Rth= Pc/(I^2);
Z=V/I;

Xth=sqrt((Z^2)-(Rth^2));

// Both these value are referred to HT side, but the answer is required to be referred to LT side

Xtl=Xth/(n^2); // Reactance referred to LT side
Rtl=Rth/(n^2); // Resistance referred to LT side

printf('The Circuit parameters referred to LT side is as follows \n')

printf('Ro = %f ohms \n Xo = %f ohms \n Rt = %f ohms \n Xt = %f ohms \n',R0,X0,Rtl,Xtl)
