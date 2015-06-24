clear;
clc;
N=1500;
disp("when speed=1455rpm");
n=1455;
s1=(N-n)/N;
r=sqrt(1/3)*(2/3)/(sqrt(s1)*(1-s1));    printf("I_2mx/I_2r=%.3f",r);

disp("when speed=1350rpm");
n=1350;
s1=(N-n)/N;
r=sqrt(1/3)*(2/3)/(sqrt(s1)*(1-s1));    printf("I_2mx/I_2r=%.3f",r);