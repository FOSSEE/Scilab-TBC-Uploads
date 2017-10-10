// Exa 17.12
// To calculate allowable throughput of reverse link in cdma 2000.

clc;
clear all;

Ec_Nt=-23;//in dB
DRC=-1.5;//DRC gain with respect to pilot in dB
Tg=3.75; // Trafﬁc channel gain with respect to pilot in dB
B=0.85;//Interference factor due to other cells 

//solution
Mmax=(1/(1+10^(DRC/10)+10^(Tg/10)))*(1/((10^(Ec_Nt/10)*(1+B))));
//The sector loading can be expressed as a fraction of the pole capacity Mmax. This is typically 70% of the pole capacity. 
M_allow=int(0.7*Mmax);
//From table 17.2 we get Traffic channel rate as 9.6kbps since we are given traffic channel gain with respect to pilot as 3.75 dB
Ri=9.6; //in kbps(see table 17.2)
Tput=Ri*M_allow;
printf(' Allowable reverse link throughput is %d kbps \n ',round(Tput));
