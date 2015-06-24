//Exa 7.4
clc;
clear;
close;
//Given data : 
format('v',6);
VA=235;//in volt
VB=236;//in volt
l=200;//in meter
IL1=20; IL2=40; IL3=25; IL4=30;//in Ampere
l1=50; l2=75; l3=100; l4=50;//in meter
r=0.4;//in ohm/km
r=0.4/10^3;//in ohm/m
RAC=r*l1*2;//in ohm
RCD=r*(l2-l1)*2*RAC;RDE=r*(l2-l1)*2*RAC;REF=r*l1*2*RAC;RFB=r*l1*2*RAC;//in ohm
//VA-VB=VAC+VCD+VDE+VEF+VFB;//in volt
IA=(VA-VB+9.6)/(0.16);//in Ampere
IAC=IA;ICD=IA-IL1;IDE=IA-IL1-IL2;IEF=IA-IL1-IL2-IL3;IFB=IA-IL1-IL2-IL3-IL4;//in Ampere
disp(IAC,"IAC(in A):");
disp(ICD,"ICD(in A):");
disp(-IDE,"IED(in A):");
disp(-IEF,"IFE(in A):");
disp(-IFB,"IBF(in A):");
VAC=IAC*RAC;//in volt
VCD=ICD*RCD;//in volt
VD=VA-VAC-VCD;//in volt
disp(VD,"The minimum potential(in Volt) :");