//Ex:2.27
clc;
clear;
close;
FdB=0.5;// noise figure in dB
F=10^(FdB/10);// noise figure
To=290;// temperature in k
Te=(F-1)*To;// equivalent temperature in k
printf("The equivalent temperature= %f k", Te);