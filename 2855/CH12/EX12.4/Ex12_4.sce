//Chapter 12
//page no 432
//given
clc;
clear all;
Plb=10;            //in dBm for 50/125 micron fiber
Ps=3;            //in dBm for safety margin
Prs=-30;            //in dBm for receiver sensivity
Pt=Plb+Ps+Prs;
printf("\n Link power budget = %0.0f dBm",Pt);
Ptw=10^(Pt/10)*1000;
printf("\n Transmitter Power = %0.0f microW",Ptw);

