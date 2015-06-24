clc;
//e.g 27.10
AV=1500;
BW=4*10**6;
AV1=150;
beta=((1500/150)-1)/1500;
disp(beta);
BW1=(1+beta*AV)*BW;
disp('MHZ',BW1*10**-6,"BW1=");
