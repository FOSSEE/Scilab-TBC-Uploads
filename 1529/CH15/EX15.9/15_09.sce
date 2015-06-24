//Chapter 15, Problem 9
clc;
L=318.3e-3;              //inductance
R=200;                    //resistance
V=240;                  //supply voltage
f=50;                    //frequency in hertz
Xl=2*%pi*f*L;           //inductive reactance,
Z=sqrt(R^2+Xl^2);       //impedance
I=V/Z;
Vl=I*Xl;
Vr=I*R;
phi=atan(Xl/R);
printf("(a) Inductive reactance = %f ohm\n\n",Xl);
printf("(b) Impedance Z = %.1f ohm\n\n",Z);
printf("(c) Current I = %.3f A\n\n",I);
printf("(d) The p.d. across the coil = %1f V\n\n",Vl);
printf("    The p.d. across the resistor =  %.1f V\n\n",Vr);
printf("(e) From the impedance triangle, angle = %f deg (lagging)\n\n",phi*(180/%pi));
