//Chapter 14
//Example 14_1
//Page 359

clear;clc;

l=300;
i1=100;
i2=200;
l1=200;
pf1=0.707;
pf2=0.8;
r=0.2;
x=0.1;

l2=l-l1;
z=r+%i*x;
Zac=z*l1/1000;
Zcb=z*l2/1000;
I2=i2*(pf2-%i*sin(acos(pf2)));
I1=i1*(pf1-%i*sin(acos(pf1)));
Icb=I2;
Iac=I1+I2;
Vcb=Icb*Zcb;
Vac=Iac*Zac;
vd=Vac+Vcb;

printf("Impedance of distributor/km = %.2f+j(%.2f) ohm \n\n", real(z), imag(z));

printf("Impedance of section AC = Zac = %.2f+j(%.2f) ohm \n", real(Zac), imag(Zac));
printf("Impedance of section CB = Zcb = %.2f+j(%.2f) ohm \n\n", real(Zcb), imag(Zcb));

printf("Load current at point B = %.2f+j(%.2f) A \n", real(I2), imag(I2));
printf("Load current at point C = %.2f+j(%.2f) A \n\n", real(I1), imag(I1));
printf("Current in section CB = %.2f+j(%.2f) A \n", real(Icb), imag(Icb));
printf("Current in section AC = %.2f+j(%.2f) A \n\n", real(Iac), imag(Iac));
printf("Voltage drop in section CB = %.2f+j(%.2f) A \n", real(Vcb), imag(Vcb));
printf("Voltage drop in section AC = %.2f+j(%.2f) A \n\n", real(Vac), imag(Vac));
printf("Voltage drop in the distributor = %.2f+j(%.2f) A \n\n", real(vd), imag(vd));
printf("Magnitude of drop = %.2f V \n\n", abs(vd));



  



