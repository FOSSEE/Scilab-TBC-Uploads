// sum 21-5
clc;
clear;
N=800;
P=20;
i=2.5;
Ks=1.5; //(from table for 3-5 hrs/day)
Pd=P*Ks;
d=250;
D=i*d;
C=1.6*D;
Lp=(2*C)+(%pi*(D+d)/2)+((D-d)^2)/(4*C);
Li=Lp+74;
Listd=3454;
Lp=Listd+74;
p=[1 -1.0768 0.0175];

function r= myroots (p)
    
a= coeff (p ,0);
b= coeff (p ,1);
c= coeff (p ,2);
r(1)=( -b+ sqrt (b^2 -4*a*c ))/(2* a);
r(2)=( -b- sqrt (b^2 -4*a*c ))/(2* a);
endfunction
z=roots(p);
KW=9.4;
Kc=0.795;
K1=1;
n=Pd/(KW*Kc*K1);


  // printing data in scilab o/p window
  printf("C is %0.4f m ",z);
  printf("\n Pd is %0.0f KW ",Pd);
  printf("\n n is %0.2f KW ",n);
  
  
