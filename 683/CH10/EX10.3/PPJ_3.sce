// sum 10-3
clc;
clear;
p=14;
d=50;
sigyp=270;
FOS=3;
sigta=sigyp/FOS;
pt=2*p;
t=d/2*sqrt(((sigta+pt)/(sigta-pt))-1);
t=10;
D1=d+(2*t);
Ds=D1+20;
P=%pi*(Ds^2)*p/4;
sigba=380/4;
At=P/(4*sigba);
At=245;
db=20;
Dd=70+(2*20)+5;
R=db+2.5;
B=(Dd/sqrt(2))+(2*(db+2.5));
B=127;
Y=Dd/(2*sqrt(2));
Rm=34.12;
M=(P*Y/2)+(P*Rm/%pi);
sigfa=250/5;
b=127/70;
Z=b/6;
tf=sqrt(M/(sigfa*Z));
tf=44;

  // printing data in scilab o/p window
  printf("d is %0.0f mm     ",d);
  printf("\n t is %0.0f mm     ",t);
  printf("\n B is %0.0f mm     ",B);
  printf("\n R is %0.1f mm     ",R);
  printf("\n Y is %0.2f mm     ",Y);
  printf("\n tf is %0.0f mm     ",tf);