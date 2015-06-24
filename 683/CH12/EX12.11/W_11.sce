// sum 12-11
clc;
clear;
t=30;
sigut=417;
sige=sigut/2;
Ka=0.5;
Kb=0.85;
Kc=0.897;
SCF=1.2;
Kd=1/SCF;
FOS=1.5;
sige1=sige*Ka*Kb*Kc*Kd/FOS;
Pa=60*10^3;
l=Pa/(sige1*t);

  // printing data in scilab o/p window
  printf("l is %0.1f mm     ",l);