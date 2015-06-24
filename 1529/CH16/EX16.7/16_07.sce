//Chapter 16, Problem 7, Fig.16.8
clc;
L=0.12;                   //inductance in henry
R=3000;                          //resistance in ohm
C=0.02e-6;                       //capacitance in farad
V=40;                          //voltage
f=5000;                          //frequency
Xl=2*%pi*f*L;                  //inductive reactance
Z1=sqrt(R^2+Xl^2);
Ilr=V/Z1;
phi1=atan(Xl/R);
Xc=1/(2*%pi*f*C);                  //capacitive reactance
Ic=V/Xc;
Ih=Ilr*cos(51.34*%pi/180);
a=-Ilr*sin(51.34*%pi/180);
b=Ic*sin(90*%pi/180);
Iv=a+b;
I=sqrt(Ih^2+(Iv)^2);
phi2=atan(-Iv/Ih);
Z=V/I;                                 //impedance
P=V*I*cos(phi2);
S=V*I;                             //apparent power
Q=V*I*sin(phi2);                    //reactive power
printf("(a) Current in coil = %.3f mA\n Phase angle = %.3f deg (lagging)\n\n",Ilr*1000,phi1*180/%pi);
printf("(b) Current in capacitor, Ic = %.3f mA\n A leading the supply voltage by 90deg\n\n",Ic*1000);
printf("(c) Supply current I = %.3f mA\n phase angle = %.3f deg \n\n",I*1000,-phi2*180/%pi);
printf("(d) Circuit impedance Z = %.3f Kohm\n\n",Z/1000);
printf("(e) Power consumed P = %.3f mW\n\n",P*1000);
