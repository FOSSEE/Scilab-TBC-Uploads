//exa 6.9
clc;clear;close;
format('v',7);
V=132;//kV
Z=25+%i*66;//ohm
Pr=100;//MW
pf=0.9;//lagging pf
P=Pr*10^6/3;//W
theta=acosd(pf);//degree
Q=Pr*10^6*tand(theta)/3;//vars
V1=V/sqrt(3)*1000;//V
V2=V1;//V
//ts^2*[1-(R*P+X*Q)/V1/V2]=V2/V1
ts=sqrt(V2/V1/[1-(real(Z)*P+imag(Z)*Q)/V1/V2]);
tr=1/ts;
disp(ts,"Tap settings : ts is ");
format('v',5);
disp(tr,"tr is ");
