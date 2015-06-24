clear;
clc;
//Example 11.7
Ad=92.3;
Acm=0.237;//mod of Acm
CMRR=Ad/Acm;
printf('\ncommon mode rejection ratio=%.2f\n',CMRR)
CMRRdB=20*log10(CMRR);
printf('\nCMRR in decibels=%.2f dB\n',CMRRdB)
