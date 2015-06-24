clear;
clc;
Zoc=1930*exp(%i*(%pi/(180/68.9)));Zsc=1308*exp(%i*(-%pi/(180/76.2)));l=8;w=5000;
Zo=sqrt(Zoc*Zsc);
C=real(Zo);
D=imag(Zo);
printf("-Zo = %f /_ %f ohms\n",round(abs(Zo)),round(atan(D,C)*180*100/%pi)/100);
Z1=sqrt(Zsc/Zoc);
A=round(real(Z1)*1000)/1000;
B=round(imag(Z1)*1000)/1000;
D=(1+A+(%i*B))/(1-(A+(%i*B)));K=round((1+A+(%i*B))*100)/100;J=round((1-(A+(%i*B)))*10)/10;
phi1=atan(imag(K),real(K))+(%pi/4);
phi2=atan(imag(J),real(J));
phi3=phi1-phi2;
P=(1/(2*8))*(log(round(abs(K/J)*10)/10)+(%i*(round(phi3*10)/10+(6.28))));
printf(" -a = %f neper/km\n",fix(real(P)*100)/100);
printf(" -b = %f radians/km\n",fix(imag(P)*1000)/1000);
Z=P*Zo;
R=real(Z);
L=(imag(Z))/w;
printf(" -R = %f ohms/km\n",round(R*1000)/1000);
printf(" -L = %f mH/km\n",round(L*(10^6))/1000);
Y=P/Zo;
G=real(Y);
C=(imag(Y))/w;
printf(" -G = %f micro-mhos/km\n",-round(G*(10^9))/1000);
printf(" -C = %f microfarads/km",round(C*(10^9))/1000);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")
