clc;
close();
clear();
//page no 485
//prob no. 14.11
ZL=100;   //ohm
RL=ZL;
R0=300;    //ohm
TauL=(RL-R0)/(RL+R0);
mismatch_loss_dB=-10*log10(1-TauL^2);
mprintf(' The mismatch loss (dB), S = %.2f dB\n',mismatch_loss_dB);
