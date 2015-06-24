// sum 10-2
clc;
clear;
p=3*8;
sigta=60;
d=150;
t=d/2*sqrt(((sigta+p)/(sigta-p))-1);
t=75*sqrt((84/36)-1);
t=40;
do=d+(2*t);
D=d+(2*t)+20;
w=10;
Ds=d+(2*w);
P=%pi*(Ds^2)*8/4;
sigp=310;
FOS=4;
sigb=77.5;
At=P/(sigb*2);
At=1300;
D=250;
db=45;
b=D;
a=1.8*b;
CD=D+(2*db*1.2);
sigp=310;
Pr=0.75*sigp*At;
Pr=Pr*10^-3;
t=40;
D1=d+(2*t)+20;
D2=D1+(4.6*31);
CD=D2-((3*t)+20);

  // printing data in scilab o/p window
  printf("Pr is %0.2f kN     ",Pr);
  printf("\n D1 is %0.0f mm     ",D1);
  printf("\n D2 is %0.1f mm     ",D2);
  printf("\n CD is %0.1f mm     ",CD);