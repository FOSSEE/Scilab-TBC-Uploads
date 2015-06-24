// sum 21-3
clc;
clear;
C=1;
m=0.35;
d=0.25;
P=22*10^3;
//Let the smaller pulley dia be n
//Let the larger pulley dia be N
n=1000;
N=400;
D=d*n/N;
v=2*%pi*n*d/(60*2);
Tc=m*v^2;
topwidth=22;
h=14;
bottomwidth=topwidth-(2*h*tand(20));
A=(topwidth+bottomwidth)/2*h;
//let allowable tension be Ta
Ta=2.2;
T1=A*Ta;
u=0.28;
thetaA=%pi/180*(180-(2*asind((D-d)/(2*C))));
thetaB=((2*%pi)-thetaA);
//Groove angle=b=19
b=19*%pi/180;
x=u*thetaA/sin(b);
T2=Tc+((T1-Tc)/exp(x));
n=P/((T1-T2)*v);
Lp=2*sqrt((C^2)-((D-d)/2)^2)+(thetaA*d/2)+(thetaB*D/2);

  // printing data in scilab o/p window
  printf("Tc is %0.2f N ",Tc);
  printf("\n T1 is %0.1f N ",T1);
  printf("\n T2 is %0.1f N ",T2);
  printf("\n n is %0.1f ",n);
  printf("\n Lp is %0.3f m ",Lp);
  printf("\nThe designation of the belt is C-3414-47 ");
  
 // difference in value of Lp is due to rounding-off the values of thetaA and thetaB.