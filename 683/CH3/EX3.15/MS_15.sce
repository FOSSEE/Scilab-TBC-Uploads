// sum 3-15
clc;
clear;
a1=10*1.5;
x1=15-0.75;
a2=1.5*(15-1.5);
x2=(15-1.5)/2;
y1=((a1*x1)+(a2*x2))/(a1+a2);
y2=a1-y1;
Ixx=(10*1.5^3)/12+(10*1.5*(5.06-1.5/2)^2)+(1.5*13.5^3/12)+(1.5*13.5*(9.94-6.75)^2);
Z1=Ixx/y1;
Z2=Ixx/y2;
L=3;
sigc=50;
W=sigc*Z1/L*10^-3;

  // printing data in scilab o/p window
  printf("W is %0.3f kN    ",W);