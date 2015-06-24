// sum 9-10
clc;
clear;
Pi=10*10^3;
sigyp=420;
FOS=2;
sige=sigyp/FOS;
K1=0.85;
K2=0.74;
K4=0.868;
SCF=2.4;
K3=1/SCF;
sige=sige*K1*K2*K3*K4;
Pe=10*10^3/3;
Pmax=Pi+Pe;
Pmin=Pi;
Pa=(Pmax-Pmin)/2;
Pm=(Pmax+Pmin)/2;
theta=atan(Pa/Pm);
siga=21.132;
At=Pa/siga;
At=84.2;

  // printing data in scilab o/p window
  printf("At is %0.1f mm^2      ",At);
  disp('M12 coarse-pitch bolt with 1.75 mm pitch is used');