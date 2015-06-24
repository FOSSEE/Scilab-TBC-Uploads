//Chapter 12
//page no 484
//given
clc;
clear all;
E=0.115;            
fb=1062;         //in Mb/s
dl=6;           //in nm
mt=-8;       //in dBm
mr=28.7;         //in dBm
mc=0.4;         //in dB
L=5;
mco=0.12;       //in dB
Nco=8;
ms=0.2;       //in dB
Ns=4;
mD=1;
mH=0;
mCR=1;

sc=0.0;         //in dB
st=0.6;       //in dBm
sr=0.75;       //in dBm
sco=0.08;       //in dB
ss=0.1;       //in dB
ofdisp=2.8;         //in ps/nm-km
sD=2;
sH=0;
sCR=0.25;
Ls=12;

Dmax=round(E/(10^-6*fb*dl));        //taking to nearest integer in ps/nm
printf("\n Dmax is %0.0f ps/nm\n",Dmax);   
Lmax=Dmax/ofdisp;
printf("\n Maximum link distance is %0.2f km\n",Lmax);   
mM=mt+mr-(mc*L+mco*Nco+ms*Ns+mD+mH+mCR);
printf("\n Mean link margin is %0.1f dB\n",mM);
L=60;
Ls=12;  
sM=sqrt(st^2+sr^2+sc^2*L*Ls+sco^2*Nco+ss^2*Ns+sD^2*sH^2+sCR^2);
printf("\n Sigma link margin is %0.2f dB\n",sM);   
mM=round(mM*10)/10;     //talking only to 1 decimal place and rounding of other values
spm=mM-2*sM-1;
printf("\n mM-2*sM = %0.2f\n",mM-2*sM);
printf("\n System power margin is %0.2f dB\n",spm);  //answer is slighty diferent due to m\sM=1.03

