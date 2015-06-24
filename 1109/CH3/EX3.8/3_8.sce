clear;
clc;
Zo=710*exp(%i*(-%pi/(180/16)));a=0.01;b=0.035;l=100;Zr=300;
P=a+(%i*b);
V=(cosh(P*l))+((Zo/Zr)*sinh(P*l)); //V=Vs/Vr
modV=abs(V);
V1=log(modV)*8.686;
V2=log(modV);
printf("-Ratio of the transmitter voltage and the receiver voltage in nepers = %f\n",round((V2)*100)/100);
printf("-Ratio of the transmitter voltage and the receiver voltage in decibels = %f\n",round((V1)*100)/100);
