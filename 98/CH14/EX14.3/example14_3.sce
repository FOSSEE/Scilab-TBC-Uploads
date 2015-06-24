//Chapter 14
//Example 14_3
//Page 360

clear;clc;

r=0.1;
x=0.15;
Vb=200+%i*0;
i1=100;
pf2=0.8;
i2=100;
pf1=0.6;

z=r*2+%i*x*2;
Zam=z/2;
Zmb=z/2;

printf("Impedance of distributor/km = %.2f+j(%.2f) ohm \n\n", real(z), imag(z));

printf("Impedance of section AC = Zac = %.2f+j(%.2f) ohm \n", real(Zam), imag(Zam));
printf("Impedance of section CB = Zcb = %.2f+j(%.2f) ohm \n\n\n", real(Zmb), imag(Zmb));

//part 1
I2=i2*(pf2-%i*sin(acos(pf2)));
printf("(i)Load current at point B = %.2f+j(%.2f) A \n", real(I2), imag(I2));
Imb=I2;
printf("Current in section MB = %.2f+j(%.2f) A \n", real(Imb), imag(Imb));
Vmb=Imb*Zmb;
printf("Voltage drop in section MB = %.2f+j(%.2f) A \n", real(Vmb), imag(Vmb));
Vm=Vb+Vmb;
printf("Voltage at point M = %.2f+j(%.2f) \n", real(Vm), imag(Vm));
printf("Magnitude of Vm = %.2f V \n", abs(Vm));
alpha=atan(imag(Vm)/abs(Vm));
printf("Phase angle between Vm and Vb = %.2f degrees \n\n\n", alpha*180/%pi);

//part 2
phi1=acos(pf1)-alpha;
printf("Phase angle between I1 and Vb = %.2f degrees \n", phi1*180/%pi);
I1=i1*(cos(phi1)-%i*sin(phi1));
printf("(ii)Load current at point M = %.2f+j(%.2f) A \n", real(I1), imag(I1));
Iam=I1+I2;
printf("Current in section AM = %.2f+j(%.2f) A \n", real(Iam), imag(Iam));
Vam=Iam*Zam;
printf("Voltage drop in section AM = %.2f+j(%.2f) A \n", real(Vam), imag(Vam));


Va=Vm+Vam;
printf("Sending end voltage = %.2f+j(%.2f) \n", real(Va), imag(Va));
printf("Magnitude of sending end voltage = %.2f V \n\n\n", abs(Va));

pd=atan(imag(Va)/abs(Va));
printf("(iii)The phase difference between Va and Vb = %.2f degrees \n\n", pd*180/%pi);
