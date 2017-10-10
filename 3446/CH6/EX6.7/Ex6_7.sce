// Exa 6.7
// Using the data given in Exa 6.4 and 6.6, compare the capacity of the DS-CDMA and TDMA omnidirectional cell.

clc;
clear all;

//Given Data from Exa 6.4 and Exa 6.6
Cd=0.8; //capacity degradation factor
R=16.2;//Data rate in kbps
Eb_I0=7; //in dB
Eb_I=10^(Eb_I0*0.1);//To convert from dB to a normal value
Vf=0.4;//voice activity factor 
u=2;  // Bit Efficiency
IR=16.2; // in kbps
N=19; //frequency reuse factor
nf=0.45;//frequency reuse efﬁciency 

//solution
Ncdma_by_Ntdma=Cd*N*nf*IR/(Eb_I*Vf*u*R);
printf('The ratio of capacity of DS-CDMA to TDMA is %.3f\n',Ncdma_by_Ntdma);
