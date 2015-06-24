//exa 2.14
clc;clear;close;
format('v',7);
//C=5000+450*P+0.5*P^2;//Rs./hour
e1=+2;//%//error
e2=-2;//%//error
P=200;//MW//Total Load
//Considering error
P1=poly(0,'P1');
P2=poly(0,'P2');
C1=(5000+450*P+0.5*P1^2)*0.98;//Rs./hour
C2=(5000+450*P+0.5*P2^2)*1.02;//Rs./hour
//Let loads of unit are P1 & P-P1
//dC1/dP1=dC2/dP2 for economic sheduling
eqn=450*0.98+2*0.5*P1*0.98-450*1.02-2*0.5*(P-P1)*1.02;
P1=roots(eqn);//MW
P2=P-P1;//MW
//if no instrumention error
C1=(5000+450*P1+0.5*P1^2)*0.98;//Rs./hour
C2=(5000+450*P2+0.5*P2^2)*1.02;//Rs./hour
C=C1+C2;//Rs./hour
//Due to intrumentation error
P1=P/2;//MW
P2=P/2;//MW
C1=(5000+450*P1+0.5*P1^2)*0.98;//Rs./hour
C2=(5000+450*P2+0.5*P2^2)*1.02;//Rs./hour
Cerr=C1+C2;//Rs./hour
Cextra=Cerr-C;//Rs,/hour
disp(Cextra,"Extra operating cost(Rs./hour)");
