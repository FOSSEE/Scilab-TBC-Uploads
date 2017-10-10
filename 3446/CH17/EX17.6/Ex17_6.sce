// Exa 17.6
// To calculate Uplink throughput for a WCDMA cell.

clc;
clear all;

Eb_Nt=1;  //in dB
cellLoading=0.5;//Required interference margin(3 dB)
B=0.5;//Interference factor due to other cells
Vi=1;//Channel activity factor

//solution
Eb_Ntreqd=10^(Eb_Nt/10);
//Assuming standard value of chip rate as 3.84Mcps
Rc=3.84*10^6;//in cps(chips per second)
Throughput=(cellLoading*Rc)/(Eb_Ntreqd*(1+B));
printf('Uplink Throughput is %d kbps \n ',Throughput/1000);
