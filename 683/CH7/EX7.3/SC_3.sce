// sum 7-3
clc;
clear;
Ixx=(2*1696.6)+115.4;
Iyy=1696.6+(2*115.4)+(2*25.27*10.27^2);
A=3*25.27;
Kmin=sqrt(Ixx/75.81);
L=600;
k=L/Kmin;
sigc=110;
c=1/200;
sigw=sigc*(1-(c*k));
Pw=sigw*A;
a=1/7500;
sigc1=320;
Pr=(sigc1*A)/(1+(a*(L/Kmin)^2));
FOS=Pr/Pw;

  // printing data in scilab o/p window
  printf("FOS is %0.2f      ",FOS);