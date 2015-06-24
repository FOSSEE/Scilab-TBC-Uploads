// sum 12-7
clc;
clear;
sigut=415;
sige=sigut/3;
Ka=0.5;
Kb=0.85;
Kc=0.897;
SCF=1.5;
Kd=1/SCF;
FOS=2;
sige1=sige*Ka*Kb*Kc*Kd/FOS;
Pa=50*10^3;
h=10;
t=0.707*h;
l=Pa/(2*sige1*t);

  // printing data in scilab o/p window
  printf("l is %0.0f mm     ",l);