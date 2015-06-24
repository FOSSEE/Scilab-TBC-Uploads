// sum 6-4
clc;
clear;
l=360;
P=400;
Mh=2*P*l/3;
sigb=50;
l1=60;
d=(Mh*32/(%pi*l1))^(1/3);
d=30;
L=420;
siga=60;
H=20;
B=H/3;
Mx=P*(L-H/2);
Tx=2*P*l/3;
sigb1=Mx*18/H^3;
Td=P/(B*H);
Tr=17.17*Tx/H^4;
T=Tr+Td;
sigmax=(sigb1/2)+sqrt((sigb1/2)^2+T^2);
Tmax=sqrt((sigb1/2)^2+T^2);
T=P*L;
M=P*(l1+(2/3*l));
Te=sqrt(T^2+M^2);
Ta=40;
D=(Te*16/(%pi*Ta))^(1/3);
D=30; //Rounding off to nearest whole number

  // printing data in scilab o/p window
  printf("d is %0.1f mm     ",d);
  printf("\n D is %0.1f mm     ",D);