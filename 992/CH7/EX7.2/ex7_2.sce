
//Exa:7.2
clc;
clear;
close;
//Given:
free_f=5.8;//in MHz
lock1=17;//in percent
lock2=23;//in percent
lock_feq=lock1*free_f/100;
min1=free_f-lock_feq;
max1=free_f+lock_feq;
printf("\n 1)Lock range is from %fMHz to %fMHz",min1,max1);
lock_feq=lock2*free_f/100;
min2=free_f-lock_feq;
max2=free_f+lock_feq;
printf("\n 2)Lock range is from %fMHz to %fMHz",min2,max2);