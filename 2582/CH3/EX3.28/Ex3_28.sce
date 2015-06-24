//Ex 3.28
clc;clear;close;
f0=1*1000;//Hz
BW=2*%pi*50;//Hz
C=10;//nF
Q=2*%pi*f0/BW;//quality factor
R=1/(2*%pi*f0*C*10^-9)/1000;//kohm
R1=10;//kohm(Assumed)
RF=10;//kohm(Assumed)
R3BYR2=2*Q-1;
R2=10;//kohm(Assumed)
R3=R3BYR2*R2;//kohm
disp("Design values for KHN circuit :");
disp(RF,R1,"Use Resistance R1 & RF in kohm : ");
disp(R2,"Use Resistance R2 in kohm : ");
disp(R3,"Resistance R3 in kohm : ");
K=2-1/Q;//scaling factor
CenterFrequency=K*Q;
disp(CenterFrequency,"CenterFrequency ");
