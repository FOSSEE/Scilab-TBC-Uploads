//Example 11.2

clear;

clc;

linerper=0.001;

loadrper=0.001*10^3;

TC=1*10^(-6);

Vimin=13.5;

Vimax=35;

Vo=10;

delVi=Vimax-Vimin;

delIo=10*10^(-3);

delVovi=((linerper*delVi)*Vo)/100;

delVoio=((loadrper*delIo)*Vo)/100;

Tmax=70;

Tmin=0;

delT=Tmax-Tmin;

delVoT=((TC*delT)*Vo);

printf("(a) Variation of Vo with change in Vi=%.2f mV",delVovi*10^3);

printf("\n(b) Variation of Vo with change in Io=%.f mV",delVoio*10^3);

printf("\n(c) Variation of Vo with change in temperature=%.1f mV",delVoT*10^3);