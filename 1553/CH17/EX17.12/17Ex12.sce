//chapter 17 Ex 12

clc;
clear;
close;
d=100/1000;  //converting meter to km
s_t=8;s_p=10;
s_relative=s_p-s_t;

t_p=d/s_relative;
d_t=s_t*t_p;
dist_theif=d_t*1000;
printf("The distance covered by theif is %d meter",dist_theif);
