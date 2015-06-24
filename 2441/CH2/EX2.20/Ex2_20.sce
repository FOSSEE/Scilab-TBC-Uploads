//exa 2.20
clc;clear;close;
format('v',6);
//F1=0.004*P1^2+2*P1+80;//Rs./hr
//F2=0.006*P2^2+1.5*P2+100;//Rs./hr
P=250;//MW
P1=poly(0,'P1');P2=poly(0,'P2');
dF1bydP1=2*0.004*P1+2;
dF2bydP2=2*0.006*P2+1.5;
//Let loads are P1 & P-P1
//Economical loading lambda1=lambda2
eqn=2*0.004*P1+2-2*0.006*(P-P1)-1.5;
P1=roots(eqn);//MW
P2=P-P1;//MW
disp(P1,"Load P1(MW) : ");
disp(P2,"Load P2(MW) : ");
