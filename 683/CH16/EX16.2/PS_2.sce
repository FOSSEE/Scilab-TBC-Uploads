// sum 16-2
clc;
clear;
d=50;
W=20*10^3;
r1=10;
r2=30;
p=7;
u1=0.12/cosd(15);
u2=0.15;
dm=d-(p/2);
alpha=atan(3*p/(%pi*dm));
phi=atan(u1);
rm=(r1+r2)/2;
Tr=W*((dm*tan(alpha+phi)/2)+(u2*rm));
Tr=Tr*10^-3;
Te=W*((dm*tan(phi-alpha)/2)+(u2*rm));
Te=Te*10^-3;
n=dm/2*tan(alpha)/(dm*tan(alpha+phi)/2+(u2*rm));
L=0.30;
Ph=Tr/L;

  // printing data in scilab o/p window
  printf("Tr is %0.2f Nm     ",Tr);
  printf("\n Te is %0.3f Nm     ",Te);
  printf("\n n is %0.4f      ",n);
  printf("\n Ph is %0.2f N     ",Ph);
  
  //The answers to Tr, Te and Ph is slightly different than in the book due to rounding-off of values.


