//Chapter 15, Problem 7
clc;
R=4;                    //coil resistance
L=9.55e-3;              //inductance
f=50                    //frequency in hertz
V=240;                  //supply voltage
Xl=2*%pi*f*L;           //inductive reactance,
Z=sqrt(R^2+Xl^2);       //impedance
I=V/Z;                  //current
phi=atan(Xl/R);
printf("(a) Inductive reactance Xl = %d ohm\n\n",Xl);
printf("(b) Impedance Z = %d ohm\n\n",Z);
printf("(c) Current I = %f A\n\n",I);
printf("The circuit and phasor diagrams and the voltage and impedance triangles are as shown in Fig. 15.6\n");
printf("phi = %f lagging",phi*(180/%pi));
