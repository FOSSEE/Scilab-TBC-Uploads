// sum 5-3
clc;
clear;
sige=220;
v=0.29;
Ri=175;
FOS=3;
Sa=sige/3;
p=10;
//t1=thickness according to maximum principal stress theory
//t2=thickness according to maximum shear stress theory
x=Sa+(p*(1-(2*v)));
y=Sa-(p*(1+v));
t1=(sqrt(x/y)-1)*Ri;
t1=24;
//t1=((sqrt((Sa+(p*(1-(2*v)))))/(Sa-(p*(1+v))))-1)*Ri;
t2=Ri*((sqrt(Sa/(Sa-(2*p))))-1);

  // printing data in scilab o/p window
  printf("t1 is %0.1fmm ",t1);
  printf("\n t2 is %0.3fmm ",t2);
  
  //The answer to t2 is not calculated in the book.