//exa 6.7
clc;clear;close;
format('v',6);
V=220;//kV
Z=20+%i*60;//ohm
Pr=100;//MVA
pf=0.8;//lagging pf
P=Pr*10^6*pf/3;//W
theta=acosd(pf);//degree
Q=Pr*10^6*sind(theta)/3;//Vars
V1=V/sqrt(3)*1000;//V
V2=V1;//V
//ts^2*[1-(R*P+X*Q)/V1/V2]=V2/V1
ts=sqrt(V2/V1/[1-(real(Z)*P+imag(Z)*Q)/V1/V2]);
tr=1/ts;
disp(ts,"Tap settings : ts is ");
format('v',5);
disp(tr,"tr is ");
