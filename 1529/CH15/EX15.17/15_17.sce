//Chapter 15, Problem 17, Fig 15.17
clc;
R1=4;                              //resistance in ohm
R2=8;                              //resistance in ohm
I=5;                                    //current in ampere
f=5000;                                 //supply frequency
L=0.286e-3;                           //inductance in henry
C=1.273e-6;                           //capacitance in farad
Xl=2*%pi*f*L;                           //inductive reactance
Z1=sqrt(R1^2+Xl^2);
V1=I*Z1;
phi=atan(Xl/R1);
Xc=1/(2*%pi*f*C);                      //capacitive reactance
Z2=sqrt(R2^2+Xc^2);
V2=I*Z2;
phi2=atan(Xc/R2);
printf("Phase angle 1, phi = %.2f deg (lagging)\n\n",phi*(180/%pi));
printf("Phase angle 2, phi2 = %.2f deg (leading)\n\n",phi2*(180/%pi));
printf("The phasor diagram is shown in Fig. 15.18");
