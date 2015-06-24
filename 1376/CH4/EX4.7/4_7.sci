//4.7
clc;
E=230;
V1=60;
V2=40;
Rv=50000;
R1=((E-(V1+V2))/V2)*Rv*10^-3;
printf("Resistance between positive and earth=%.2f Kohm",R1)
R2=((E-(V1+V2))/V1)*Rv*10^-3;
printf("\nResistance between -ve and earth=%.2f Kohm",R2)