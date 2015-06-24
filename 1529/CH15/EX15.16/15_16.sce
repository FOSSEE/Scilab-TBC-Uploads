//Chapter 15, Problem 16, Fig 15.16
clc;
V=40;                              //supply voltage
f=20e3;                                 //supply frequency
R1=8;                              //resistance in ohm
L=130e-6;                           //inductance in henry
R2=5;                              //resistance in ohm
R3=10;
C=0.25e-6;                           //capacitance in farad
Re=R1+R2+R3;                            //eqv resistance
Xl=2*%pi*f*L;                           //inductive reactance
Xc=1/(2*%pi*f*C);                      //capacitive reactance
X=Xc-Xl;
Z=sqrt(Re^2+X^2);                       //impedance
I=V/Z;                                  //current
phi=atan(X/Re);
Z2=sqrt(R2^2+Xl^2);
Z3=sqrt(R3^2+Xc^2);
V1=I*R1;
V2=I*Z2;
V3=I*Z3;
printf("(a) Current, I = %.3f A\n\n",I);
printf("Phase angle = %.2f deg (leading)\n\n",phi*(180/%pi));
printf("V1 = %.2f V\n\nV2 = %.2fV\n\nV3 = %.2fV",V1,V2,V3)
