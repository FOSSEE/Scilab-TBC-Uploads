//chapter 6
//page no184
//Ex6_19
//given
clear;
clc;
dV=45;              //in mV
di=2.5;           //in Amp
CT=2.2;          //in microF
LT=0.05;          //in nH
fCL=di/(dV*10^-3*2*%pi*CT*10^-6);
printf("\n fLnoise = %0.0f MHz\n ",fCL/10^6);          //Result     
fCH=42.3;           //in MHz taken from last question i.e. 6.18
printf("\n fHnoise (from last question i.e. 6.18)= %0.1f MHz\n ",fCH);        
printf("\n  %0.0fMHz <= B.W.noise <= %0.2fMHZ",fCL/10^6,fCH);         //Result
