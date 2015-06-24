//Ex:99
clc;
clear;
close;
c_nu=10^(25/10);// The uplink carrier to noise ratio
c_nd=10^(20/10);// The uplink carrier to noise ratio
c_n1=(1/c_nu)+(1/c_nd);
c_n=1/c_n1;// carrier to noise ratio
printf("The carrier to noise ratio=%f db", 10*log(c_n)/log(10));