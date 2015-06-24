clc
Vr=25;              //Assigning values to parameters
Vcoil=40;
Vc=55;
Vrcoil=50;
I=0.345;
C=20*10^-6;
Xc=Vc/I;
f=1/(2*%pi*C*Xc);
R=Vr/I;
Zcoil=Vcoil/I;
Zrcoil=Vrcoil/I;
r=(Zrcoil^2-(R^2+Zcoil^2))/(2*R);
Xl=sqrt(Zcoil^2-r^2);
Z=sqrt((R+r)^2+(Xc-Xl)^2);
V=I*Z;
disp("Volts",V,"Voltage");