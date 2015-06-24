// sum 12-8
clc;
clear;
l=300;
P=30*10^3;
T=P/(2*l);
Ta=124;
t1=T/Ta;
h1=sqrt(2)*t1;
M=P*l;
Ixx=2*100*110^2;
sigb=M/Ixx*110;
//Let the allowable bending stress is Tab
Tab=200;
t2=sigb/Tab;
h2=t2/0.707;
h2=3;

  // printing data in scilab o/p window
  printf("h is %0.0f mm     ",h2);