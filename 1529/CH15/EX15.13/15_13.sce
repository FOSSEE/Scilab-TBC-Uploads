//Chapter 15, Problem 13
clc;
R=25;                      //resistance in ohm
C=45e-6;                    //capacitance in farad
V=240;                      //supply voltage
f=50;                       //supply frequency
Xc=1/(2*%pi*f*C);           //capacitive reactance
Z=sqrt(R^2+Xc^2);           //impedance
I=V/Z;                      //current
a=atan(Xc/R);
printf("(a) Impedance, Z = %.2f ohm\n\n",Z);
printf("(b) Current, I = %.2f A\n\n",I);
printf("Phase angle between the supply voltage and current, = %.2f deg (leading)\n\n",a*(180/%pi));
