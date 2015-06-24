// sum 5-4
clc;
clear;
p=16;
Ri=250;
//Yield strength =sigy;
sigy=330;
v=0.3;
FOS=3;
Sa=sigy/3;
t=Ri*((sqrt(Sa/(Sa-(2*p))))-1);
t=50;
  // printing data in scilab o/p window
   printf("t is %0.1fmm ",t);