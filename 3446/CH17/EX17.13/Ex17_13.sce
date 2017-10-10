// Exa 17.13
// To calculate average SINR of HSDPA.

clc;
clear all;

Ptmax=5.5;//Maximum transmit power of DSCH in watts
Pbs=18;// Total base station power in watts
alpha=0.2;//downlink orthogonality factor 
G=0.363;// geometry factor
SF=16; //Spreading Factor for DSCH;fixed at value of 16

//solution
// Using equation no 17.27 given on page no 623
SINR=SF*(Ptmax/(Pbs*(1-alpha+(1/G))));
// In dB
SINR_db=10*log10(SINR);

printf('The average SINR of HSDPA is %.1f dB = %.4f \n ',SINR_db,SINR);
