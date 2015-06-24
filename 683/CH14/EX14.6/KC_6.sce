// sum 14-5
clc;
clear;
P=16*10^3;
N=1000;
w=2*%pi*N/60;
T=P/w;
Ks=1.4;
Td=T*Ks;
Tas=40;
d=16*T*10^3/(%pi*Tas);
d=d^(1/3);
d=32;
d1=2*d;
l=1.5*d;
ds=1.5*d;
Tak=40;
sigack=70;
Ftk=Td*2/d;
b=Ftk*10^3/(l*Tak);
t=2*Ftk*10^3/(sigack*l);
Taf=10;
tf=Td*10^3*2/(%pi*Taf*d1^2);
Ftb=Td*10^3/(1.5*d*4);
Tab=40;
db=sqrt(Ftb*4/(Tab*%pi));
D=4*d;
trp=d/6;
Ftb1=Td*10^3/(45*4);
db1=sqrt(Ftb1*4/(Tab*%pi));

  // printing data in scilab o/p window
  printf("d is %0.0f mm     ",d);
  printf("\n b is %0.0f mm     ",b);
  printf("\n t is %0.0f mm     ",t);
  printf("\n db is %0.2f mm     ",db);
  printf("\n db1 is %0.2f mm     ",db1);
  
  //The answer to Key thickness 't' is calculated incorrectly in the book.