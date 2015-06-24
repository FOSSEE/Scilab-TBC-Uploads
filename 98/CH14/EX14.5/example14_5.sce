//Chapter 14
//Example 14_5
//Page 363

clear;clc;

i1=5;
i2=14.08;
pf1=0.8;
pf2=0.85;
l1=600;
l2=400;
hp=10;
n=0.90;
vb=400;
r=1;
x=0.5;

z=r+%i*x;
Zac=z*l1/1000;
Zcb=z*l2/1000;

printf("Impedance of distributor/km = %.2f+j(%.2f) ohm \n\n", real(z), imag(z));

printf("Impedance of section AC = Zac = %.2f+j(%.2f) ohm \n", real(Zac), imag(Zac));
printf("Impedance of section CB = Zcb = %.2f+j(%.2f) ohm \n\n\n", real(Zcb), imag(Zcb));

Vb=vb/sqrt(3)+%i*0;
printf("Voltage at point B taken as the reference vector = %.0f+j%.0f \n", real(Vb), imag(Vb));
Ib=hp*746/sqrt(3)/vb/n/pf2;
I2=i2*(pf2-%i*sin(acos(pf2)));
I1=i1*(pf1-%i*sin(acos(pf1)));
Iac=I2+I1;
Icb=I2;
Vcb=Icb*Zcb;
Vac=Iac*Zac;
Va=Vb+Vcb+Vac;

printf("Line current at B = %.2f A \n\n", Ib);

printf("Load current at point B = %.2f+j(%.2f) A \n", real(I2), imag(I2));
printf("Load current at point C = %.2f+j(%.2f) A \n\n", real(I1), imag(I1));

printf("Current in section CB = %.2f+j(%.2f) A \n", real(Icb), imag(Icb));
printf("Current in section AC = %.2f+j(%.2f) A \n\n", real(Iac), imag(Iac));

printf("Voltage drop in section CB = %.2f+j(%.2f) A \n", real(Vcb), imag(Vcb));
printf("Voltage drop in section AC = %.2f+j(%.2f) A \n\n", real(Vac), imag(Vac));

printf("Voltage at A/phase = %.2f+j(%.2f) A \n\n", real(Va), imag(Va));
printf("Magnitude of Va/phase = %.2f V \n\n", abs(Va));
printf("Line voltage at A = %.2f V \n\n", abs(Va)*sqrt(3));




