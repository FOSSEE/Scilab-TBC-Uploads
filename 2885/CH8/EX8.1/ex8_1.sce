//Express the gain in decibel
clear;
clc;
//soltion
//given

//Powere gain of 1000
Pg1=1000;
Pgd1=10*log10(Pg1);
printf("Power gain (in dB)= %.0f dB\n",Pgd1);

//Voltage gain of 1000
Vg1=1000;
Vgd1=20*log10(Vg1);
printf("Voltage gain (in dB)= %.0f dB\n",Vgd1);

//Powere gain of 1/100
Pg2=1/100;
Pgd2=10*log10(Pg2);
printf("Power gain (in dB)= %.0f dB\n",Pgd2);

//Voltage gain of 1/100
Vg2=1/100;
Vgd2=20*log10(Vg2);
printf("Voltage gain (in dB)= %.0f dB\n",Vgd2);
