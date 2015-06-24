// Exa 8.1
clc;
clear;
close;
// given data 
disp("We have : ");
disp("Io1=gm1*V1");
disp("Io2=-gm2*Vo");
disp("I=Io1+Io2=gm1*V1-gm2*Vo");
disp("We also have : I=(Vo-V1)*s*C");
disp("From above two eqn :");
disp("gm1*V1-gm2*Vo=(Vo-V1)*s*C");
disp("Arranging terms to get Vo/V1 we have : ");
disp("Transfer Function : V0/V1=(gm1+s*C)/(gm2+s*C)");