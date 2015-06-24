//Example 11.12

clear;

clc;

Vo=15;

R1=10*10^3;

R2=20*10^3;

Rpot=1*10^3;

VDO=2;

VCCmin=17;

VCCmax=35;

inf=1+(R2/R1);

printf("Permissible input range :%.f V<=",VCCmin);

printf("VCC<=%.f V",VCCmax);

printf("\nThe percentage values of line and load regulation are the same as for the 7805;");

printf("\nhowever, their mV/V and mV/A values are now %.f times as large.",inf);