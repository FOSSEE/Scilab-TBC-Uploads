//Ex:38
clc;
clear;
close;
t_r=(79*127)/(24*10^3);//Time required to transmit 79 blocks in sec
t_pb=t_r/79;//Transmission time per block
n_b=0.48/t_pb;//no. of blocks which arrive at the receiver
n_B=ceil(n_b);
c_r=n_B*127;//the required capacity in bits
printf("The required capacity=%d bits",c_r);