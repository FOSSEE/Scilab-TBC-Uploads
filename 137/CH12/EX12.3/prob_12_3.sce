//page 547
//problem 12.3
// for a gaussian m(t),mp will be assumed as 36m
clc;
Sg=3;//assumed
Mbar=(Sg^2);
MP=((3*Sg)^2);
B=0.2;//ASSUMED
gma=0.4;//assumed
SNR=3*B^2*(Mbar/MP)*gma;
disp(SNR,'SIGNAL TO NOISE RATIO IS');