
//example 4-5 in page 98
clc;
//data given
E=1;// E=1 V
Im=1e-3;//FSD=1 mA
Rm=100;// Rm in ohm
//calculation
R3=E/Im;
printf("R3=%d K-ohm\n",R3/1000);
printf("Vout=%.1f V\n",Im*(R3+Rm));
//result
//R3=1 K-ohm
//Vout=1.1 V