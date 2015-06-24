// sum 6-6
clc;
clear;
L=450;
P=700;
T=P*L;
Ta=50;
d=(T*16/(%pi*Ta))^(1/3);
d=32;
d1=1.6*d;
d1=52; //Rounding off to nearest whole number
l1=1.25*d;
My=P*(L-d1/2);
sigb=65;
H=(My*18/sigb)^(1/3);
H=45;
B=H/3;
T1=P/(B*H);
sigmax=(sigb/2)+sqrt((sigb/2)^2+T^2);
Mx=P*l1/2;
Te=sqrt((T)^2+(Mx^2));
d2=(Te*16/(%pi*Ta))^(1/3);
d2=d2+6;
d2=38; //Rounding off to nearest whole number

  // printing data in scilab o/p window
  printf("d is %0.1f  mm     ",d);
  printf("\n d1 is %0.1f mm     ",d1);
  printf("\n l1 is %0.1f mm     ",l1);
  printf("\n B  is %0.1f mm     ",B);
  printf("\n H  is %0.1f mm     ",H);
  printf("\n d2 is %0.1f mm     ",d2);
  