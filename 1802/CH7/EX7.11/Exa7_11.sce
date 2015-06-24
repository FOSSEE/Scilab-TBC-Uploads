//Exa 7.11
clc;
clear;
close;
//Given data : 
format('v',7);
l=600;//in meter
VA=440;//in volt
VB=400;//in volt
R=0.01;//in ohm/100m
RAC=(R/100)*300;//in ohm
RCD=(R/100)*300;//in ohm
RDE=(R/100)*100;//in ohm
REF=(R/100)*200;//in ohm
RFB=(R/100)*300;//in ohm
//VA-VB=VAC+VCD+VDE+VEF+VFB;//in volt
IA=(VA-VB+42.5)/(0.12);//in Ampere
IAC=IA;ICD=IA-100;IDE=IA-300;IFE=IA-550;IFB=IA-850;//in Ampere
disp(IAC,"Current fed at A, IA(in A):");
disp(-IFB,"Current fed at B, IB(in A):");