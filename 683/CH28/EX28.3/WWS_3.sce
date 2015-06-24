// sum 28-3
clc;
clear;
Z1=2;
Z2=60;
q=10;
m=5;
P=6000;
N=1440;
u=0.08;
alpha=20*%pi/180;
lambda=atan(Z1/q);
d=m*q;
w=2*%pi*N/60;
T=P/w;
Ptw=T*10^3/(d/2);
a=cos(alpha);
b=cos(lambda);
x=sin(alpha);
y=sin(lambda);
Paw=Ptw*(((a*b)-(u*y))/((a*y)+(u*b)));
Prw=Ptw*y/((a*y)+(u*b));
//Paw=Ptw*((cos(alpha)*cos(lambda))-(u*sin(lambda)))/((cos(alpha)*sin(lambda))+(u*cos(lambda)));
//Prw=Ptw*((sin(alpha))/((cos(alpha)*sin(lambda))+(u*cos(lambda))));

  // printing data in scilab o/p window
  printf("Ptw=Pag is %0.1f N  ",Ptw);
  printf("\n Paw=Ptg is %0.0f N  ",Paw);
  printf("\n Prw=Prg  is %0.0f N  ",Prw);
  
//The difference in the value is due to rounding-off the values.
