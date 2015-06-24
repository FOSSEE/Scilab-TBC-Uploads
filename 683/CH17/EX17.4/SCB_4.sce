// sum 17-4
clc;
clear;
l=60;
d=60;
r=d/2;
W=3000;
p=W/(l*d);
u=30*10^-9;
c=0.06;
nj=1440/60;
S=(r/c)^2*u*nj/p;
//For ratio l/d=1, values of different parameters are given in matrix A corresponding to S
A=[1 0.264 0.6 5.79 3.99
   1 0.121 0.4 3.22 4.33];
//let ho/c=x
x=(A(1,3))-((A(1,3)-(A(2,3)))*((A(1,2))-S)/((A(1,2))-(A(2,2))));
//let y= (r/c)*f=CFV
y=(A(1,4))-((A(1,4)-(A(2,4)))*((A(1,2))-S)/((A(1,2))-(A(2,2))));
//let z=Q/(r*c*nj*l)=FV
z=(A(1,5))-((A(1,5)-(A(2,5)))*((A(1,2))-S)/((A(1,2))-(A(2,2))));
f=y*c/r;
ho=x*c;
Q=z*r*c*nj*l;
Q=Q*60/10^6;
delT=8.3*p*y/z;
//let power lost in friction be Pf
Pf=2*%pi*nj*f*W*r/10^6;

  // printing data in scilab o/p window
  printf("f is %0.5f  ",f);
  printf("\n ho is %0.3f mm ",ho);
  printf("\n Q is %0.3f lpm ",Q);
  printf("\n delT is %0.1f degC ",delT);
  printf("\n Pf is %0.4f KW ",Pf);