clear;
clc;
Z1=300;Zo=650*exp(%i*(-%pi/(180/12)));Z2=Zo;
Z=Z1+Z2;
K=(2*sqrt(Z1*abs(Z2)))/abs(Z);
printf("-Reflection factor = %f\n",round(K*1000)/1000);
L=20*(log10(1/K));
printf("-Reflection loss = %f db",round(L*100)/100);
//the difference in result of reflection loss is due to erroneous value in textbook.
disp("The difference in result of reflection loss is due to erroneous value in textbook")
