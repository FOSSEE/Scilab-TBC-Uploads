//Chapter 15, Problem 14
clc;
I=3;
Z=50;                                 //impedance
R=40;                              //resistance in ohm
f=60;                                 //supply frequency
Xc=sqrt(Z^2-R^2);                      //capacitive reactance
C=1/(2*%pi*f*Xc);                   //capacitance in farad
V=I*Z;                              //voltage
a=atan(Xc/R);
Vr=I*R;
Vc=I*Xc;
printf("(a) Capacitance, C = %.2f uF\n\n",C*10^6);
printf("(b) Supply voltage V = %d V\n\n",V);
printf("(c) Phase angle between the supply voltage and current, = %.2f deg (leading)\n\n",a*(180/%pi));
printf("(d) p.d. across resistor, Vr = %d V\n\n",Vr);
printf("p.d. across the capacitor, Vc = %d V\n\n",Vc);
printf("The phasor diagram is shown in Fig. 15.11, where the supply voltage V is the phasor sum of VR and VC.");
