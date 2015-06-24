//chapter 6
//page no182
//Ex6_17
//given
clear;
clc;
dV=50;              //in mV
di=4;           //in Amp
Cbypas=200;          //in microF
Lbypas=0.2;          //in nH
fL=di/(dV*10^-3*2*%pi*Cbypas*10^-6);
printf("\n fLnoise = %0.0f kHz\n ",fL/1000);          //Result misprinted
fH=dV*10^-3/di/2/%pi/Lbypas/10^-9;
printf("\n fHnoise = %0.0f MHz\n ",fH/10^6);         
Bw=fH-fL;
printf("\n Bwnoise = %0.2f MHZ",Bw/10^6);         //Result miscalculated
