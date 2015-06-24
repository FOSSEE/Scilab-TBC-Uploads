clc;clear;
//Example 6.8

//given data
Qrefrig=40;
COPR=1.3;
Wlight=40;

//calculation
Wrefrig=Qrefrig/COPR;
Wt=Wrefrig+Wlight;
AnHr=365*24;//annual hours
NOH=20*30/3600*365;//normal operating hours
AOP=AnHr-NOH;//addtional operating hours
APC=Wt*AOP/1000;//additional power consumption; fator of 1000 to convert to kW
APC=round(APC);
disp(APC,'increase in power consumption in kWh/yr');
disp((APC)*0.08,'increase in cost in Dollar/yr')
