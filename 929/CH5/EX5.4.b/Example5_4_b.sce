//Example 5.4(b)

clear;

clc;

R1=10*10^3;

R2=100*10^3;

CMRRdB=57;//refer curve of fig.5A.6 at 10 kHz

CMRRrec=10^(-(CMRRdB/20));//Reciprocal of CMRR

delvi=10;

delvp=(R2/(R1+R2))*delvi;

delVos=CMRRrec*delvp;

dcgain=1+(R2/R1);

delvo=dcgain*delVos;

printf("Typical change in vo=%.3f V",delvo);