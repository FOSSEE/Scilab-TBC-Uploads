clc;
close();
//page no 238
//prob no. 7.10
delta_f=6;   //kHz
W=2;   //kHz
D=delta_f/W;   //deviation ratio
disp(D,'The deviation ratio is');
Bt=2*(delta_f+W);   //carsom's rule is applicable
mprintf('The transmission bandwidth Bt= %i kHz ',Bt)
