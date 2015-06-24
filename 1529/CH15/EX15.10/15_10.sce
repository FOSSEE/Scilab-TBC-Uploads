//Chapter 15, Problem 10
clc;
//from eqn v=200 (sin 500t)
Vm=200;
w=500;
V=0.707*200;
L=200e-3;                   //inductance
R=100;                      //resistance
Xl=w*L;                     //inductive reactance
Z=sqrt(R^2+Xl^2);           //impedance
I=V/Z;
Vl=I*Xl;
Vr=I*R;
phi=atan(Xl/R);
printf("(a) Inductive reactance = %d ohm\n\n",Xl);
printf("(b) Impedance Z = %.1f ohm\n\n",Z);
printf("(c) Current I = %f A\n\n",I);
printf("(d) The p.d. across the coil = %f V\n\n",Vl);
printf("    The p.d. across the resistor =  %f V\n\n",Vr);
printf("(e) Phase angle between voltage and current is given by,\n angle = %d deg\n\n",phi*(180/%pi));
