
//Exa:9.3
clc;
clear;
close;
//Given:
Bw=4000;//in Hz
nQl=128;//i.e. =2^7;//quantizing levels
NyqR=2*Bw;
n=7;
Total_bpersmple=8;
total_smples=NyqR*Total_bpersmple;
printf("\n nyquist sampling rate = %fHz",NyqR);
printf("\n Bit rate = %fKb/sec",total_smples);