//find sending end voltage and regulation
clear;
clc;
//soltion
//given
P=5000;//kW//power
V=11000;//kV//recieving voltage
pf=0.8;//peak factor
L=1.1*10^-3//H per km per phase//Line inductance
Ll=0.12*P*1000;
Vr=V/sqrt(3);
I=P*1000/(3*round(Vr)*pf);
R=Ll/(3*I^2);
X=5.1836;
Vs=round(Vr)+(round(I)*R*pf)+(I*X*sind(acosd(pf)));
Vsl=sqrt(3)*Vs;
printf("Line voltage at sending end= %.3f kV\n",Vsl/1000);
Pr=((Vsl-V)*100)/V;
printf("Percentage regulation= %.3f percent\n",Pr);
