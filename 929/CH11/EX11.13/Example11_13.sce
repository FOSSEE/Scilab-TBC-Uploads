//Example 11.13

clear;

clc;

Vreg=1.25;

VDO=2;

linerp=0.07;

Rpot=10*10^3;

CMRRdB=70;

VCC=15;

Imin=0;

Imax=1;

k=1;

R=Vreg/Imax;

PR=Vreg*Imax;

VLmax=VCC-VDO-Vreg;

delVo=1;

delIo=((Vreg*(linerp/100))+(10^(-CMRRdB/20)))/R;

Romin=delVo/delIo;

printf("R=%.2f ohms",R);

printf(",%.2f W",PR);

printf("\nVoltage Compliance=%.2f V",VLmax);

printf("\nMinimum Equivalent Resistance=%.2f kohms",Romin*10^(-3));