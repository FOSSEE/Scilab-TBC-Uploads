// sum 8-8
clc;
clear;
d=2;
Do=20;
D=Do-d;
C=D/d;
Na=9;
//Material hard drawn spring steel
A=1783;
m=0.19;
G=81000;
sig=A/(d^m);
Tys=0.45*sig
Kf=1.5;
Ta=Tys/Kf;
Ks=1+(0.5/C);
W=(Ta*%pi*(d^3))/(8*D*Ks);
k=(G*(d^4))/(8*(D^3)*Na);
del=W/k;
Lo=((Na+1)*d)+(1.15*del);
p=(Lo-d)/Na;

  // printing data in scilab o/p window
  printf("k is %0.3f N/mm ",k);
  printf("\n W is %0.1f N ",W);
  printf("\n Lo is %0.3f mm ",Lo);
  printf("\n p is %0.3f mm ",p);
  
  
  if ((Lo)>=47.34)
    disp ('The spring will fail under buckling'); 
end

//The answer for value of spring rate 'k' is misprinted in the book. Due to this all subsequent values of del,Lo,p is calucated incorrectly in the book.