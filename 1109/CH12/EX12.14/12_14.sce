clear;
clc;
V=50*exp(%i*45/(180/%pi));Z1=3;Z2=2+(%i*10);Xl=2;
Voc=V*Z2/(Z1+Z2);
Zab=1/((1/Z1)+(1/Z2));
Zg=Zab
Rl1=Zg-(%i*Xl);
Rl=abs(Rl1);
Z=Zab+Rl-(%i*Xl);
I1=Voc/Z;
I=abs(I1);
P=I*I*Rl;
printf("-Rl = %f ohms\n",round(Rl*100)/100);
printf("-Xl = %f ohms\n",Xl);
printf("-Maximum power delivered to load = %f Watts",round(P));


