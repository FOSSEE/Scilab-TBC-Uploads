clc;
//e.g 27.13
AV=100;
RDN=0.8;
//0.8=1-(1/(1+beta*AV));
beta=((1/0.2)-1)/100;
disp(beta);
AV1=AV/(1+beta*AV);
disp(AV1);
