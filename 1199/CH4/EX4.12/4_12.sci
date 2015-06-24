//4.12
clc;
Vs=7;
Vn=1;
fh=10^3;
H=2*fh*log2(1+(Vs/Vn));
printf("\nMaximum possible data transmission rate =%.1f bits per second",H)
Sampling_rate=2*fh;
printf("\nminimum sampling rate per channel =%.1f samples per second",Sampling_rate)
C_max=85714/2000;
printf("\nmaximum number of channels =%.0f ",C_max)