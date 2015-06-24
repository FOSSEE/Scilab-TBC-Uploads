// sum 18-5
clc;
clear;
R1x=120;
R1y=250;
R2x=300;
R2y=400;
Lh=8000;
N=720;
Ln=Lh*60*N*10^-6;
R1=sqrt(R1x^2+R1y^2);
R2=sqrt(R2x^2+R2y^2);
//Let load factor be Ks
Ks=1.5;
P1=R1*Ks;
P2=R2*Ks;
C1=P1*(Ln^(1/3));
C2=P2*(Ln^(1/3));
//let designation,d,D,B,C at bearing B1 be De1,d1,D1,B1,C1
d1=25;
D1=37;
B1=7;
C1=3120;
De1=61805;
//let designation,d,D,B,C at bearing B2 be De2,d2,D2,B2,C2
d2=25;
D2=47;
B2=8;
C2=7620;
De2=16005;

  // printing data in scilab o/p window
  printf("Designation of Bearing B1 is %0.0f     ",De1);
  printf("\n d1 is %0.0f mm    ",d1);
  printf("\n D1 is %0.0f mm    ",D1);
  printf("\n B1 is %0.0f mm    ",B1);
  printf("\n C1 is %0.0f N    ",C1);
  printf("\n Designation of Bearing B2 is %0.0f     ",De2);
  printf("\n d2 is %0.0f mm    ",d2);
  printf("\n D2 is %0.0f mm    ",D2);
  printf("\n B2 is %0.0f mm    ",B2);
  printf("\n C2 is %0.0f N    ",C2);
  
  disp('Bearing 61805 at B1 and 16005 at B2 can be installed.')