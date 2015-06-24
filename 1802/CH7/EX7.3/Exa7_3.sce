//Exa 7.3
clc;
clear;
close;
//Given data : 
format('v',6);
l=250;//in meter
VA=230;//in volt
VB=232;//in volt
r=0.5;//in ohm/km
r=0.5/10^3;//in ohm/m
RAC=r*50*2;//in ohm
RCD=RAC;RDE=RAC;REF=RAC;RFB=RAC;//in ohm
//VA-VB=VAC+VCD+VDE+VEF+VFB;//in volt
Ia=(VA-VB+15)/(5*RAC);//in Ampere
IAC=Ia;ICD=IAC-20;IDE=IAC-60;IED=-IDE;IEF=IAC-100;IFE=-IEF;IFB=IAC-120;IBF=-IFB;//in Ampere
disp(IAC,"IAC(in A):");
disp(ICD,"ICD(in A):");
disp(IDE,"IDE(in A):");
disp(IED,"IED(in A):");
disp(IEF,"IEF(in A):");
disp(IFE,"IFE(in A):");
disp(IFB,"IFB(in A):");
disp(IBF,"IBF(in A):");
VAC=IAC*RAC;//in volt
VCD=ICD*RCD;//in volt
VD=VA-VAC-VCD;//in volt
disp(VD,"The minimum potential(in Volt) :");