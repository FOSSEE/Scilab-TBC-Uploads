//Ex:2.23
clc;
clear;
close;
FdB=1.1;// noise figure in dB
F=10^(FdB/10);// noise figure
To=290;// temperature in k
Te=(F-1)*To;// equivalent temperature in k
printf("The equivalent temperature= %f k", Te);