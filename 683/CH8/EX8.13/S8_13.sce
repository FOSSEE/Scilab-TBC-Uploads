// sum 8-13
clc;
clear;
//ultimate strength=sigut
sigut=1500;
C=7;
d=3;
D=C*d;
Ks=1+(0.5/C);
Kw=(((4*C)-1)/((4*C)-4))+(0.615/C);
Pmax=120;
Pmin=40;
Pm=80;
Tm=(Ks*8*Pm*D)/(%pi*(d^3));
Ta=(Kw*8*Pmin*D)/(%pi*(d^3));
Tse=0.22*sigut;
Tys=0.45*sigut;
x=(Tys-(0.5*Tse))/(0.5*Tse);
y=((x)*Ta)+Tm;
FOS=(Tys/y);

  // printing data in scilab o/p window
  printf("Tm is %0.2f MPa ",Tm);
  printf("\n Ta is %0.1f MPa ",Ta);
  printf("\n FOS is %0.3f ",FOS);