clc;
//e.g 27.9
AV=100;
BW=200*10**3;
beta=0.05;
BW1=(1+beta*AV)*BW;
disp('KHZ',BW1*10^-3,"BW1=");
AV1=AV/(1+beta*AV);
disp(AV1);
//1*10**6=(1+beta1*AV)*BW;
beta1=(((1*10**6)/(200*10**3))-1)/100;
disp(beta1);
