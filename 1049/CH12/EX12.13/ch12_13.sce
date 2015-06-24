clear;
clc;
//after calculating
//t=w_m/6000-%pi/360

N=1000;
w_m=2*%pi*N/60;
t=w_m/6000-%pi/360;    printf("time reqd=%.5f s",t);
//printing mistake in the answer in book