//Chapter 15, Problem 12
clc;
L=159.2e-3;                 //inductance in henry
Rc=20;                      //resistance in ohm
R1=60;                      //resistance in ohm
f=50;                       //frequency in hertz
V=240;                      //supply voltage
R=Rc+R1;
Xl=2*%pi*f*L;               //inductive reactance
Z=sqrt(R^2+Xl^2);           //impedance
I=V/Z;
phi=atan(Xl/R);
Vr=I*R1;
Zcoil=sqrt(Rc^2+Xl^2);
Vcoil=I*Zcoil;
Vl=I*Xl;
Vrcoil=I*Rc;
printf("(a) Circuit impedance, Z = %.2f ohm\n\n",Z);
printf("(b) Circuit current, I = %.3f A\n\n",I);
printf("(c) Circuit phase angle, phi = %d deg Lagging\n\n",phi*(180/%pi));
printf("From Fig. 15.8(a):\n\n");
printf("p.d. across the 60ohm resistor, Vr = %.1f V\n\n",Vr);
printf("p.d. across the coil, Vcoil = %.1f V\n\n",Vcoil);
printf("The 240V supply voltage is the phasor sum of VCOIL and VR as shown in the phasor diagram in Fig. 15.9");
printf("From circuit in Fig. 15.8(a)\n\n");
