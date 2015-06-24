//Chapter 12
//page no 483
//given
clc;
clear all;
E=0.115;            
fb=622;         //in Mb/s
dl=4;           //in nm
mt=0.1;       //in dBm
mr=-31.5;         //in dBm
mc=0.41;         //in dB
L=25;
mco=0.12;       //in dB
Nco=2;
ms=0.15;       //in dB
Ns=4;
mD=1;
mH=0;
mCR=0;

sc=0.0;         //in dB
st=-0.15;       //in dBm
sr=0.3;       //in dBm
sco=0.08;       //in dB
ss=0.1;       //in dB
ofdisp=2.8;         //in ps/nm-km
sD=2;
sH=0;
sCR=0.0;
Ls=12;

Dmax=E/(10^-6*fb*dl);
printf("\n Dmax is %0.2f ps/nm\n",Dmax);   
Lmax=Dmax/ofdisp;
printf("\n Maximum link distance is %0.1f km\n",Lmax);   //in book 4 is misprint for solving 
mM=mt-mr-(mc*L+mco*Nco+ms*Ns+mD+mH+mCR);
printf("\n Mean link margin is %0.1f dB\n",mM);         //wrong in book
L=60;
Ls=12;  
sM=sqrt(st^2+sr^2+sc^2*L*Ls+sco^2*Nco+ss^2*Ns+sD^2*sH^2+sCR^2);
printf("\n Sigma link margin is %0.2f dB\n",sM);   
spm=mM-2*sM-1;
printf("\n System power margin is %0.2f dB\n",spm);   //answer is slighty difeerent due to mM=19.5

