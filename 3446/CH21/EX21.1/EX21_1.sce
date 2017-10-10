// Exa 21.1
// To find number of users that can be supported by the WLAN and the bandwidth efﬁciency.

clc;
clear all;

Fl=902; //lower limit frequency MHz
Fh=928; //higher limit frequency in MHz
Rt=0.5; //symbol transmission rate in Mega symbols per sec
S=16; //No of symbols
BER=10^-5;//Bir error rate
SG=2.6;//sector gain
B=0.5; //Interference factor
a=0.9; //power control efficiency

//solution
BW=Fh-Fl;
Rb=Rt*log2(S);
Gp=BW/Rb;
// BER = 10^-5= 0.5*erfc(sqrt(Eb_No))
deff('y=f(x)','y=0.5*erfc(sqrt(x))-10^-5')
[x,v,info]=fsolve(0.1,f);//x=Eb_No
M=Gp/x * 1/(1+B) * SG * a;
printf('Number of users that can be supported by the WLAN are %d \n',M);
eff=Rb*int(M)/BW;
printf(' The bandwidth efficiency is %.2f bps/Hz \n',eff);
