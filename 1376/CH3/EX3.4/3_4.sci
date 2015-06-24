//3.4
clc;
V=1;
R=2*10^3;
I=(V/R)*1000;
printf("Actual current=%.2f mA",I)
Rm=1000;
Rt=R+Rm;
I=(V/Rt)*1000;
printf("\nCurrent when Rm is 1000 ohm =%.2f mA",I)
Rm=100;
Rt=R+Rm;
I=(V/Rt)*1000;
printf("\nCurrent when Rm is 100 ohm =%.2f mA",I)
