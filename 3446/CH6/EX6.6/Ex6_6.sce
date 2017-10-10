// Exa 6.6
// To calculate capacity and spectral efﬁciency of the DS-CDMA system.

clc;
clear all;

nb=0.9;//bandwidth efﬁciency
nf=0.45;//frequency reuse efﬁciency 
Cd=0.8; //capacity degradation factor 
Vf=0.4;//voice activity factor 
Eb_I0=7; // desired energy-to-interference ratio in dB
L=1;//  efﬁciency of sector-antenna in cell 
BW=12.5;//One way system BW in MHz
R=16.2;//Information rate in kbps

//solution
Eb_I=10^(Eb_I0*0.1);//To convert from dB to a normal value
Nu=(nf*nb*Cd*L/Vf)*(BW*1000/(Eb_I*R));//Capacity of system
Seff=round(Nu)*R/(12.5*10^3);
printf('Capacity of system is %d mobile users per cell\n ',round(Nu));
printf('Spectral efficiency of TDMA system is %.3f bits/sec/Hz\n',Seff);

disp("In these calculations, an omnidirectional antenna is assumed. If a three  sector antenna (i.e., G=3) is used at a cell site with lamda(efficiency of sector-antenna in a cell)= 2.6, the capacity will be increased to 325 mobile users  per cell, and spectral efﬁciency will be 0.421 bits/sec/Hz.")
