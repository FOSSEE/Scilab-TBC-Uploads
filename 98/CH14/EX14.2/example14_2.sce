//Chapter 14
//Example 14_2
//Page 359

clear;clc;

l=2000;
i1=80;
pf1=0.9;
i2=120;
pf2=0.8;
r=0.05;
x=0.1;
Vb=230+%i*0;
l1=1000;
l2=l-l1;

z=r+%i*x;
Zac=z*l1/1000;
Zcb=z*l2/1000;

printf("Impedance of distributor/km = %.2f+j(%.2f) ohm \n\n", real(z), imag(z));

printf("Impedance of section AC = Zac = %.2f+j(%.2f) ohm \n", real(Zac), imag(Zac));
printf("Impedance of section CB = Zcb = %.2f+j(%.2f) ohm \n\n\n", real(Zcb), imag(Zcb));

I2=i2*(pf2-%i*sin(acos(pf2)));
I1=i1*(pf1-%i*sin(acos(pf1)));

printf("(i)Load current at point B = %.2f+j(%.2f) A \n", real(I2), imag(I2));
printf("Load current at point C = %.2f+j(%.2f) A \n\n", real(I1), imag(I1));

Icb=I2;
Iac=I1+I2;

Vcb=Icb*Zcb;
Vac=Iac*Zac;

printf("Current in section CB = %.2f+j(%.2f) A \n", real(Icb), imag(Icb));
printf("Current in section AC = %.2f+j(%.2f) A \n\n", real(Iac), imag(Iac));

printf("Voltage drop in section CB = %.2f+j(%.2f) A \n", real(Vcb), imag(Vcb));
printf("Voltage drop in section AC = %.2f+j(%.2f) A \n\n", real(Vac), imag(Vac));

Va=Vb+Vcb+Vac;
printf("Sending end voltage = %.2f+j(%.2f) \n", real(Va), imag(Va));
printf("Magnitude of sending end voltage = %.2f V \n\n\n", abs(Va));

pd=atan(imag(Va)/abs(Va));
printf("(ii)The phase difference between Va and Vb = %.2f degrees \n\n", pd*180/%pi);


