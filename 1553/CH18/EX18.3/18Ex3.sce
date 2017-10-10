//chapter 18 Ex 3

clc;
clear;
close;

d_b=180; t1=8; t2=12; t=t1+t2;
length_t=(d_b/t)/(1/t1-1/t);
s_t=length_t/t1;
s=s_t*18/5;
printf("The length of train is %d meter and its speed is %d km/hr",length_t,s);
