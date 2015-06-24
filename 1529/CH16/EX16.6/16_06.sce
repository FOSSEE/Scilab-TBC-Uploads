//Chapter 16, Problem 6, Fig.16.6
clc;
L=159.2e-3;                    //inductance in henry
R=40;                           //resistance in ohm
C=30e-6;                        //capacitance in farad
V=240;                          //voltage
f=50;                           //frequency
Xl=2*%pi*f*L;                   //inductive reactance
Z1=sqrt(R^2+Xl^2);
Ilr=V/Z1;
phi1=atan(Xl/R);
Xc=1/(2*%pi*f*C);                   //capacitive reactance
Ic=V/Xc;
Ih=Ilr*cos(51.34*%pi/180);
a=-Ilr*sin(51.34*%pi/180);
b=Ic*sin(90*%pi/180);
Iv=a+b;
I=sqrt(Ih^2+(Iv)^2);
phi2=atan(-Iv/Ih);
Z=V/I;                                  //impedance
P=V*I*cos(phi2);
S=V*I;                              //apparent power
Q=V*I*sin(phi2);                    //reactive power
printf("(a) Current in coil = %f A\n Phase angle = %f deg (lagging)\n\n",Ilr,phi1*180/%pi);
printf("(b) Current in capacitor, Ic = %f A\n A leading the supply voltage by 90deg\n\n",Ic);
printf("(c) Supply current I = %f A\n phase angle = %f deg (lagging)\n\n",I,phi2*180/%pi);
printf("(d) Circuit impedance Z = %f ohm\n\n",Z);
printf("(e) Power consumed P = %f W\n\n",P);
