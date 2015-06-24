// sum 10-4
clc;
clear;
p=1.25;
D=200;
nt=0.75;
C=9;
sigta=20;
t=(p*D)/(2*sigta*nt)+C;
t=18;
D1=D+(2*t);
dr=D1+10;
sigp=310;
sigba=sigp/4;
db=16;
Db=dr+32+5;
Do=Db+(2*db);
P=%pi*(251+db)^2*1.25/4;
n=6;
Y=(Db-dr)/2;
M=P/n*Y;
Z=dr*tand(30)/6;
tf=sqrt(M/(sigta*Z));
tf=22;
Deff=dr+db+5;

  // printing data in scilab o/p window
  printf("D is %0.0f mm     ",D);
  printf("\n t is %0.0f mm     ",t);
  printf("\n Y is %0.1f mm     ",Y);
  printf("\n tf is %0.0f mm     ",tf);
  printf("\n Deff is %0.0f mm     ",Deff);