// sum 25-2
clc;
clear;
N=800;
P=6000;
n=200;
Cs=1.4;
sigb=150;
FOS=2;
Zp=18;
Zg=Zp*N/n;
Y=%pi*(0.154-(0.912/Zp));
p=[1 0 -9.5846 -38.135];

function r= myroots (p)
    
a= coeff (p ,0);
b= coeff (p ,1);
c= coeff (p ,2);
d= coeff (p, 3);
r(1)=( -b+ sqrt (b^2 -4*a*c ))/(2* a);
r(2)=( -b- sqrt (b^2 -4*a*c ))/(2* a);
endfunction
m=roots(p);
m=4.5;
dp=m*Zp;
dg=m*Zg;
// printing data in scilab o/p window
  printf("dp is %0.0f mm  ",dp);
  printf("\n dg is %0.0f mm  ",dg);
