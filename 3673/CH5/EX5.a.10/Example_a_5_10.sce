//Example_a_5_10 page no:211
clc;
V=50;
Zmag=8.5;
Zang=30;
Zreal=Zmag*cosd(Zang);
Zimag=Zmag*sind(Zang);
Z=Zreal+(%i*Zimag);
L1=%i*3;
R1=10;
L2=%i*30;
L=R1+L2;
Lmag=sqrt(real(L)^2+imag(L)^2);
Lang=atand(imag(L)/real(L));
I1=V/imag(L1);
I2=V/Lmag;
It=I1+I2;//applied current
Zt=Z+((L1)*L/(L+L1));
Ztmag=sqrt(real(Zt)^2+imag(Zt)^2);//impedence
Ztang=atand(imag(Zt)/real(Zt));
V=It*Ztmag;
disp(V,"the magnitude of applied voltage is (in V)");
