// sum 31-1
clc;
clear;
d=18;
lg=25+25;
Eb=210*10^3;
Ecl=90*10^3;
A=%pi*d^2/4;
kb=A*Eb/lg;
x=(5*(lg+(0.5*d))/(lg+(2.5*d)));
km=%pi*Ecl*d/(2*log(x));
C=kb/(kb+km);
sigp=600;
At=192;
Pi=0.75*sigp*At;
F=200;
C=0.322;
Pb=F*C*10^3;
FOS=2;
W=At*sigp;
N=Pb*FOS/(W-Pi);

  // printing data in scilab o/p window
  printf("N is %0.2f      ",N);
