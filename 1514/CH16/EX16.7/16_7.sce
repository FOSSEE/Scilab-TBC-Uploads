//chapter 16
//example 16.7
//page 489
clear;
clc ;
//given
Eoavg=20;
Eomax=21;
Vo=12;
Av=100//voltage gain
//10% change in filter op
deltaEo=10/100*20;
deltaVs=deltaEo;
deltaVo=1000*deltaVs/Av;//mV
//line regulation
lineR=(deltaVo*100/Vo)/1000;
printf("\nline regulation=%.2f%% ",lineR);
//Eo changes from Eomax to Eoavg
deltaEo=Eomax-Eoavg;
deltaVs=deltaEo;
//Il change from no load to full load
deltaVo=1000*deltaVs/Av;
//load regulation
loadR=(deltaVo*100/Vo)/1000;
printf("\nload regulation=%.2f%% ",loadR)


