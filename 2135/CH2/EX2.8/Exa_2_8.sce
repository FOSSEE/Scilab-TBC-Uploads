//Exa 2.8
clc;
clear;
close;
format('v',9);

//Given Data : 
m=50;//Kg
C1=10;//m/s
C2=30;//m/s
Z2subZ1=40;//m
Q=30000;//J
W1=-4500;//J
W2=0.002;//KWh
g=9.81;//gravity constant
W2=W2*3600*1000;//J
//sigmaQ-sigmaW=E2-E1=(U2-U1)+(C2^2-C1^2)/2+g*(Z2-Z1)
U2subU1=Q-(W1+W2)-(C2^2-C1^2)/2-g*(Z2subZ1);//J
disp(U2subU1,"Change in Internal energy in J : ");
