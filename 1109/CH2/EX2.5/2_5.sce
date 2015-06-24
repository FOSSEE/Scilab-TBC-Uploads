clear;
clc;
w=5000;Zoc=1300*exp(%i*(%pi/(180/80)));Zsc=3200*exp(%i*(-%pi/(180/80)));l=40;
Zo=sqrt(Zoc*Zsc);
Z1=sqrt(Zsc/Zoc);
A=real(Z1);
B=imag(Z1);
D=(1+A+(%i*B))/(1-(A+(%i*B)));K=(1+A+(%i*B));J=(1-(A+(%i*B)));
r=round(abs(D)*1000)/1000;
theta=round(atan((imag(D))/(real(D)))*10)/10;
P=(1/(2*l))*((log(r))+(%i*(theta+6.28)));
b=imag(P);
Z=P*Zo;
R=real(Z);
L=(imag(Z))/w;
printf("R = %f ohms\n",fix(R*100)/100);
printf(" L = %f mH/km\n",round(L*(10^6))/1000);
Y=P/Zo;
G=real(Y);
C=(imag(Y))/w;
printf(" G = %f micro-mhos/km\n",round(G*(10^8))/100);
printf(" C = %f micro-farads/km",round(C*(10^9))/1000);
//the difference in result of L and C is due to erroneous value in textbook.
disp("The difference in result of L and C is due to erroneous value in textbook")

