// sum 9-11
clc;
clear;
Pi=15;
Pmax=15+3.75;
Pmin=15+1.25;
Pa=(Pmax-Pmin)/2;
Pm=(Pmax+Pmin)/2;
K1=0.85;
K2=0.7;
K4=0.897;
SCF=2.4;
K3=1/SCF;
sige=900/4*K1*K2*K3*K4;
siga=28.115;
At=Pa*10^3/siga;
At=58;

  // printing data in scilab o/p window
  printf("At is %0.0f mm^2      ",At);