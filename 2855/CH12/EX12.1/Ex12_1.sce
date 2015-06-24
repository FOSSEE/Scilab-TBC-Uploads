//Chapter 12
//page no 431
//given
clc;
clear all;
Pt=10;            //in microW
Pr=1;            //in microW
PtdBm=10*log10(Pt*10^-6/10^-3)                    //in dBm
printf("\n Transmitter Power = %0.0f dBm",PtdBm);
PrdBm=10*log10(Pr*10^-6/10^-3)                    //in dBm
printf("\n Receiver Power = %0.0f dBm",PrdBm);
Pm=PtdBm-PrdBm;
printf("\n Power margin= %0.0f dBm",Pm);    //misprint in book
