//exa 2.19
clc;clear;close;
format('v',6);
//lambda1=0.1*P1+20;//Rs./MWh
//lambda2=0.12*P2+16;//Rs./MWh
P=180;//MW
//Let loads are P1 & P-P1
//Economical loading lambda1=lambda2
P1=poly(0,'P1');P2=poly(0,'P2');
eqn=0.1*P1+20-0.12*(P-P1)-16;
P1=roots(eqn);//MW
P2=P-P1;//MW
disp(P1,"Load P1(MW) : ");
disp(P2,"Load P2(MW) : ");
