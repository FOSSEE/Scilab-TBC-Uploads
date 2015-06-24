//Chapter 15, Problem 15, Fig 15.13
clc;
R=5;                                //resistance in ohm
L=120e-3;                           //inductance in henry
C=100e-6;                           //capacitance in farad
V=300;                              //supply voltage
f=50;                                //supply frequency
Xl=2*%pi*f*L;                        //inductive reactance
Xc=1/(2*%pi*f*C);                    //capacitive reactance
X=Xl-Xc;
Z=sqrt(R^2+X^2);                    //impedance
I=V/Z;                              //current 
phi=atan(X/R);
Zcoil=sqrt(R^2+Xl^2);                 //impedance of coil
Vcoil=I*Zcoil;                        //voltage across coil
phi2=atan(Xl/R);
Vc=I*Xc;                              //voltage across capacitor
printf("(a) Current, I = %f A\n\n",I);
printf("(b) Phase angle = %f deg (leading)\n\n",phi*(180/%pi));
printf("(c) Phase angle of coil = %f deg (lagging)\n\n",phi2*(180/%pi));
printf("(d) Voltage across capacitor, Vc = %f V\n\n",Vc);
printf("The phasor diagram is shown in Fig. 15.14. The supply voltage V is the phasor sum of VCOIL and VC.");
