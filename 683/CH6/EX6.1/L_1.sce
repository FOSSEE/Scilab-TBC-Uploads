// sum 6-1
clc;
clear;
del=10;
k=500;
W=k*del;
//Let load arm be l1
l1=200;
//Let effort arm be l2
l2=500;
P=W*l1/l2;
Ro=sqrt(W^2+P^2);
Ta=40;
d=sqrt(Ro*4/(2*%pi*Ta));
d=10;
pb=10;
d1=sqrt(Ro/(pb*1.5));
d1=20;
l=1.5*d;
t=10;
T=Ro*4/(2*%pi*d1^2);
M=(Ro/2*(l/2+t/3))-(Ro/2*l/4);
sigb=32*M/(%pi*d1^3);
sigmax=(sigb/2)+sqrt((sigb/2)^2+T^2);
P=Ro/(l*d1);
D=2*d1;

  // printing data in scilab o/p window
  printf("d1 is %0.1f mm     ",d1);
  printf("\n D is %0.1f mm     ",D);
