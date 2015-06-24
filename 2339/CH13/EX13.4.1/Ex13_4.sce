clc
clear

D=1;
P=5000;
N=250;
Mew=0.25;
PP=20;
Theta=170*(22/7)*(1/180);
V=((22/7)*D*N)/60;

T12=exp(Mew*Theta)-1;
T2=(P/(V*T12));
T1=(T12+1)*T2;
W=T1/PP;

printf('Width of belt= %2.2f mm',W);
printf('\n');
