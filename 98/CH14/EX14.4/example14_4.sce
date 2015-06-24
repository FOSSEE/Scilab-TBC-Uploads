//Chapter 14
//Example 14_4
//Page 362

clear;clc;

Ib=20;
Ic=15;
pfb=0.8;
pfc=0.6;
zab=1+%i*1;
zac=1+%i*3;
zbc=1+%i*2;

Iab=Ib*(pfb-%i*sin(acos(pfb)));
Iac=Ic*(pfc-%i*sin(acos(pfc)));
Vab=Iab*zab;
Vac=Iac*zac;

Eo=Vac-Vab;
Zo=zab+zac;
Ibc=Eo/(Zo+zbc);
Iabs=Iab-Ibc;
Iacs=Iac-Ibc;
Ia=Iab+Iac;

printf("Current in section AB = %.2f+j(%.2f) \n", real(Iab), imag(Iab));
printf("Current in section AC = %.2f+j(%.2f) \n", real(Iac), imag(Iac));
printf("Voltage drop in section AB = %.2f+j(%.2f) \n", real(Vab), imag(Vab));
printf("Voltage drop in section AC = %.2f+j(%.2f) \n", real(Vac), imag(Vac));
printf("Thevenins equivalent circuit emf Eo = %.2f+(%.2f) \n", real(Eo), imag(Eo));
printf("Thevenins equivalent impedance Zo = %.2f+(%.2f) \n", real(Zo), imag(Zo));
printf("Current in BC = %.2f+j(%.2f) \n", real(Ibc), imag(Ibc));
printf("Current in AB = %.2f+j(%.2f) \n", real(Iabs), imag(Iabs));
printf("Current in AC = %.2f+j(%.2f) \n", real(Iacs), imag(Iacs));
printf("Current fed at A = %.2f+j(%.2f) \n", real(Ia), imag(Ia));




