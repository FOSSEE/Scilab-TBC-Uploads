//Example 11.19

clear;

clc;

VI=5;

Vo=12;

Io=1;

fs=100*10^3;

IL=(Vo/VI)*Io;

deliL=0.2*IL;

L=(VI*(1-(VI/Vo)))/(fs*deliL);

Ip=IL+(deliL/2);

Vro=100*10^(-3);

delvc=(1/3)*Vro;

C=(Io*(1-(VI/Vo)))/(fs*delvc);

delic=Ip;

delid=delic;

delvesr=(2/3)*Vro;

ESR=delvesr/delic;

printf("C=%.f uF",(C*10^6)+2);

printf("\nEquivalent Series Resistance (ESR)=%.f mohms",ESR*10^3);