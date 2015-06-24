// sum 8-14
clc;
clear;
Tse=360;
Tys=660;
d=25;
P=0.03;
m=40;
Pmin=((%pi*(d^2)*P)/4)+(m*9.81/1000);
k=6;
//Additional load= Padd=k*further compression in spring
Padd=k*10;
Pmax=Padd+Pmin;
Pm=(Pmax+Pmin)/2;
Pa=(Pmax-Pmin)/2;
d=2;
D=12;
C=6;
Ks=1+(0.5/C);
Ks=1.083;
Kw=(((4*C)-1)/((4*C)-4))+(0.615/C);
Ta=(Kw*8*Pa*D)/(%pi*(d^3));
Tm=(Ks*8*Pm*D)/(%pi*(d^3));
x=(Tys-(0.5*Tse))/(0.5*Tse);
y=((x)*Ta)+Tm;
FOS=(Tys/y);

  // printing data in scilab o/p window
  printf("Tm is %0.2f MPa ",Tm);
  printf("\n Ta is %0.3f MPa ",Ta);
  printf("\n FOS is %0.2f ",FOS);