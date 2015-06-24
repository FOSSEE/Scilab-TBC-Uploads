//Example 11.18

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

Irms=[(IL^2)+((deliL/(sqrt(12)))^2)]^(1/2);

Iomin=deliL/2;

printf("L=%.f uH",L*10^6);

printf("\nAt full load the coil must withstand Ip=%.2f A",Ip);

printf(" and Irms=%.1f A",Irms);

printf("\nMinimum Load Current (Iomin)=%.1f A",Iomin-0.1);