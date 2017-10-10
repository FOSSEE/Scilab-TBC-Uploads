//Exa 3.10
//To find required total transmit power in Watts.

clc;
clear all;

Lp=140; // path losses in dB 
k=1.38*10^-23; // Boltzmann’s constant (W/Kelvin-Hz)
k_db=10*log10(k);
f=900;//in MHz
Gt=8; //transmitting antenna gain(dB)
Gr=0; //receiver antenna gain(dB)
Ag=24;//gain of receiver ampliﬁer in dB 
Fmargin=8;//Fade margin(dB)
Nf=6;//Noise figure(dB)
L0=20; // other losses in dB
Lf=12; // antenna feed line loss in dB 
T=24.6;//Temperature expressed in dB
R=39.8; // data rate in dB 
M=8;  //overall link margin(dB)
Eb_No=10;//dB

//solution
//From equation  (3.54)
pt_db=M-Gt-Gr-Ag+ Nf + T+ k_db+ Lp+ Lf+ L0 + Fmargin+ R+ Eb_No;

Pt=10^(pt_db/10);  //dB into normal number
printf('Total transmitted power is %d Watts \n',Pt);    
