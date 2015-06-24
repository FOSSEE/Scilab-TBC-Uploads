//Chapter 15, Problem 11
clc;
L=1.273e-3;              //inductance
Vr=6;                   //pd across resistor
R=30;                   //resistor
f=5e3;                  //frequency in hertz
I=Vr/R;                 //current
Xl=2*%pi*f*L;           //inductive reactance
Z=sqrt(R^2+Xl^2);       //impedance
V=I*Z;                  //supply voltage
Vl=I*Xl;                //voltage across inductor
printf("From circuit in Fig. 15.7(a)\n\n");
printf("Supply voltage V = %f V\n\n",V);
printf("Voltage across the 1.273mH inductance Vl = %f V\n\n",Vl);
printf("The phasor diagram is shown in Fig. 15.7(b)");
