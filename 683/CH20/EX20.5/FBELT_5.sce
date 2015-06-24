// sum 20-5
clc;
clear;
i=3.6;
N=1440;
d=220;
Ks=1.2;
Kf=1.1;
C=5000;
u=0.8;
D=i*d;
//From table 20-7, the following data is available
t=5;
b=120;
Fa=30.64;
//let weight density be w
w=0.106*10^5;
Cp=0.71; //From table 20-6
Cv=1;
T1=Fa*b*t*Cp*Cv;
m=w*b*t/10^6;
V=2*%pi*N*d/(2*60*1000);
Tc=m*V^2/9.81;
theta=180+(2*asind((D-d)/(2*C)));
theta=theta*%pi/180;
x=u*theta;
T2=Tc+((T1-Tc)/exp(x));
Pd=(T1-T2)*V*10^-3;
P=Pd/(Ks*Kf);

  // printing data in scilab o/p window
  printf("V is %0.2f m/s ",V);
  printf("\n Pd is %0.2f KW ",Pd);
  printf("\n P is %0.1f KW ",P);
  
  //The value of T2 is calculated incorrectly, therefore there is a difference in the values of Pd and P.