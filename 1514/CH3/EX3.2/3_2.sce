//chapter 3
//example 3.2
//page 71

//alphadc is common base gain factor
//betadc is  dc common emitter gain factor
//Ib=base current
//Ic=collector 
clear all;
clc ;
//given currents in mA
Ic=5202;
Ic1=10*10^3;
Icbo=2 ;                                                                        //collector to bae leakage current
Ib=50;
//finding betadc
betadc=(Ic-Icbo)/(Ib+Icbo)
printf('\nbetadc=%d',betadc)
//finding emitter current
Ie=(Ic+Ib)/1000;
printf('\nIe=%.3f mA',Ie);
//finding alphadc 
alphadc=(Ic-Icbo)/Ie/10^3;
printf('\nalphadc=%.2f',alphadc);
//finding new Ib from equation Ic = betadc*Ib+(betadc+1)*Icbo
newIb=round((Ic1-(betadc+1)*Icbo)/betadc);
printf('\nnew Ib=%.1f microA',newIb)
