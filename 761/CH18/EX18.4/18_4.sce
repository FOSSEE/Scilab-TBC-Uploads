clc;
// page no 680
// prob no 18_4
T_sky=120;// Sky temp expressed in K
L_dB=2;// antenna feedline loss
L=10^(L_dB/10);
// the noise temp is given as
Ta=((L-1)*290 + T_sky)/L;
disp('K',Ta,'Noise temperature is' );