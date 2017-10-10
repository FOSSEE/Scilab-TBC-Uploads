//Determine the probability of survival for an operating period of 800 hrs
//page no 219
clear
clc;
SSA = 12500;
SSC = 11000;
SSE = 15550;
SSB = 2830;
SSD = 9850;
t=800;
MTBFA=12500;
MTBFB=2830;
MTBFC=11000;
MTBFD=9850;
MTBFE=15550;
dA=1/MTBFA;
dB=1/MTBFB;
dC=1/MTBFC;
dD=1/MTBFD;
dE=1/MTBFE;
dS=dA+dB+dC+dD+dE;
RS =%e^(-dS*t);
mprintf("\Rs = %.4f \n",RS);
