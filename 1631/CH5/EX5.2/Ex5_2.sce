//Caption: Nyquest rate,Signaling rate,bandwidth
//Example 5.2
//page no 220
//Find i)Nyquest rate,
//     iii)Signaling rate,
//     iv)bandwidth
clc;
clear;
 
f1=3000;
f4=1000;
f2=1000;
f3=1000;
//Nyquest rate
nq1=2*f1;
nq2=2*f2;
nq3=2*f3;
nq4=2*f4;
disp("kHz",nq1,"i)Nyquest rate of x1");
disp("kHz",nq2,"  Nyquest rate of x2");
disp("kHz",nq3,"  Nyquest rate of x3");
disp("kHz",nq4,"  Nyquest rate of x4");

r=nq1+nq2+nq3+nq4;
disp("Samples/sec",r,"iii)Signaling rate");
bw=r/2;
disp("Hz",bw,"iv)Minimum channel bandwidth");
