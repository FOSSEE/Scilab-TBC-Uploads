// sum 21-2
clc;
clear;
D=0.6;
d=0.3;
C=0.9;
m=0.193;
n=2;
N=1500;
u=0.3;
v=2*%pi*N/60*d/2;
P=150*10^3;
Tc=m*v^2;
//let T1-T2=T
T=P/(n*v);
thetaA=%pi/180*(180-(2*asind((D-d)/(2*C))));
thetaB=((2*%pi)-thetaA);
//Groove angle=b
b=17.5*%pi/180;
x=u*thetaA/sin(b);
y=exp(x);
c=(Tc*(1-y));
T2=(T+(Tc*(1-y)))/(y-1);
//T2=(T-y)/Tc;
T1=T+Tc;
Lp=2*sqrt((C^2)-((D-d)/2)^2)+(thetaA*d/2)+(thetaB*D/2);
v=sqrt(T/(3*m));

  // printing data in scilab o/p window
  printf("Tc is %0.2f N ",Tc);
  printf("\n T1 is %0.0f N ",T1);
  printf("\n T2 is %0.2f N ",T2);
  printf("\n Lp is %0.3f m ",Lp);
  printf("\n v is %0.2f m/s ",v);
  printf("\nThe designation of the belt is B-3251-45 ");
  
  //The difference in values of T1 and T2 is due to rounding-off of values.