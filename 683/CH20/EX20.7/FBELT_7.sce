// sum 20-7
clc;
clear;
b=160;
t=7;
P=3*10^3;
Ks=1.2;
d=160;
N=1440;
D=480;
C=2400;
w=11200;
u=0.4;
Fa=7.2;
m=w*b*t/10^6;
V=2*%pi*N*d/(2*60*1000);
Tc=m*V^2/9.81;
Cp=0.6; //from table 20-6
Cv=0.98; //from table 20-7
Ta=Fa*b*Cp*Cv;
T=P/V;
theta=180-(2*asind((D-d)/(2*C)));
theta=theta*%pi/180;
x=u*theta;
//T2=Tc+((T1-Tc)/exp(x));
T2=(T+((exp(x)*Tc)-Tc))/(exp(x)-1);
T1=T+T2;
Kf=Ta/T1;
Pd=P*Ks*Kf;
Pd=Pd*10^-3;

  // printing data in scilab o/p window
  printf("Tc is %0.0f N ",Tc);
  printf("\n T1 is %0.2f N ",T1);
  printf("\n T2 is %0.2f N ",T2);
  printf("\n Kf is %0.2f  ",Kf);
  printf("\n Pd is %0.1f KW ",Pd);
  
  //The difference in values of T1 and T2 is due to rounding-off of values.
 