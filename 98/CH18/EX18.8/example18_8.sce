//Chapter 18
//Example 18_8
//Page 433

clear;clc;

a=1*(cosd(120)+%i*sind(120));

In=300*(cosd(300)+%i*sind(300));
Ir1=200*(cosd(0)+%i*sind(0));
Ir2=100*(cosd(60)+%i*sind(60));

Ir0=1/3*In;

Ir=Ir0+Ir1+Ir2;
Iy=Ir0+a^2*Ir1+a*Ir2;
Ib=Ir0+a*Ir1+a^2*Ir2;

printf("Ir = %.2f /_%.2f volts \n\n", abs(Ir), atand(imag(Ir)/real(Ir)));
printf("Iy = %.2f /_%.2f volts \n\n", abs(Iy), atand(imag(Iy)/real(Iy))-180);
printf("Ib = %.2f /_%.2f volts \n\n", abs(Ib), atand(imag(Ib)/real(Ib)));
