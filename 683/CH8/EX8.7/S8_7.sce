// sum 8-7
clc;
clear;
d=1.016;
A=2211;
m=0.145;
G=81000;
Nt=16;
Na=16-2;
sig=A/(d^m);
Tys=0.45*sig;
Do=12.6;
D=Do-d;
C=D/d;
Ks=1+(0.5/C);
W=(Tys*%pi*(d^3))/(8*D*Ks);
k=(G*(d^4))/(8*(D^3)*Na);
del=W/k;
Ls=(Nt-1)*d;
Lo=Ls+(1.15*del);


  // printing data in scilab o/p window
  printf("Tys is %0.1f MPa ",Tys);
  printf("\n Do is %0.1f N ",Do);
  printf("\n W is %0.1f N ",W);
  printf("\n k is %0.3f N ",k);
  printf("\n del is %0.2f mm ",del);
  printf("\n Ls is %0.2f mm ",Ls);
  printf("\n Lo is %0.3f mm ",Lo);
  
  if ((Lo/D)>=5.26)
    disp ('The spring will fail under buckling'); 
end

//Values after the decimal point has not been considered for answer of Torsional yeild strength in the book, whereas answers for deflection and free-length is different as entire value of variables is taken for calculation in the code.