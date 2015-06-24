clear;
clc;
Z1=30+(%i*7.5);Z2=50+(%i*10);Z3=-%i*3229;
Za=Z1;Zb=Z2;Zc=Z3;
a=Za+Zc;
b=Zb+Zc;
s=(Za*Zb)+(Zb*Zc)+(Zc*Za);
Zi1=sqrt(a*s/b);
printf("Image impedances Zi1 = %f /_ %f ohms\n",round(abs(Zi1)*10)/10,round(atan(imag(Zi1),real(Zi1))*180*100/%pi)/100);
Zi2=sqrt(b*s/a);
printf(" Image impedances Zi1 = %f /_ %f ohms\n",round(abs(Zi2)*10)/10,round(atan(imag(Zi2),real(Zi2))*180*100/%pi)/100);
Zt1=(1/2)*((Za-Zb)+sqrt(((Za-Zb)^2)+(4*s)));
printf(" Iterative impedances Zt1 = %f + j(%f) ohms\n",round(real(Zt1)*100)/100,round(imag(Zt1)*100)/100);
Zt2=(1/2)*((Zb-Za)+sqrt(((Za-Zb)^2)+(4*s)));
printf(" Iterative impedances Zt1 = %f + j(%f) ohms\n",round(real(Zt2)*100)/100,round(imag(Zt2)*100)/100);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")
