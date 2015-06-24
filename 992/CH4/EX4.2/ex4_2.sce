
//Exa:4.2
clc;
clear;
close;
//Given:
Ebb=2000;//in volts
i=2.5;//in Amps
Pr=1600;//in ohms
Rm=Ebb/i;
tr=Pr/Rm;
printf("\n turn ratio = %d:1 ",tr);