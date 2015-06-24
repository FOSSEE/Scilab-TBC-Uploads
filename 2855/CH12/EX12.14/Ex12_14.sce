//Chapter 12
//page no 481
//given
clc;
clear all;
mc=0.4;         //in dB
sc=0.0;         //in dB
dmax=2.8;       //in dB
mt=-4.9;       //in dBm
st=0.5;       //in dBm
mr=-38.1;       //in dBm
sr=0.48;         //in dBm
mco=0.35;       //in dB
sco=0.20;       //in dB
ms=0.2;       //in dB
ss=0.1;       //in dB
E=0.182;            //from table 12-11 for 2dB dispersion penalty
fb=156;         //in Mb/s
dl=4;           //in nm
ofdisp=2.8;         //in ps/nm-km
Nco=7;
mD=2;
sD=0.1;
sH=2;
sCR=0.25;
Ns=4;
mH=0;
mCR=0.5;
L=50;
Ls=10;
Dmax=E/(10^-6*fb*dl);
printf("\n Dmax is %0.0f ps/nm\n",Dmax);   
Lmax=Dmax/ofdisp;
printf("\n Maximum link distance is %0.0f km\n",Lmax);   
mM=mt-mr-(mc*L+mco*Nco+ms*Ns+mD+mH+mCR);
printf("\n Mean link margin is %0.2f dB\n",mM);   
sM=sqrt(st^2+sr^2+sc^2*L*Ls+sco^2*Nco+sD^2*sH^2+sCR^2);
printf("\n Sigma link margin is %0.3f dB\n",sM);   

