//exa 2.13
clc;clear;close;
format('v',10);
//C1=2000+20*P1+0.05*P1^2;//Rs./hour
//C2=2750+26*P2+0.03091*P2^2;//Rs./hour
P1=350;//MW
P2=550;//MW
C1=2000+20*P1+0.05*P1^2;//Rs./hour
C2=2750+26*P2+0.03091*P2^2;//Rs./hour
C=C1+C2;//Rs./hour
disp(C,"(a) Total Cost(Rs./hour)");
P=P1+P2;//MW//Total Load
P1=poly(0,'P1');
P2=poly(0,'P2');
dC1bydP1=20+2*0.05*P1;
dC2bydP2=26+2*0.03091*P2;
disp("(b) For Economic Scheduling")
format('v',7);
//dC1/dP1=dC2/dP2 for economic sheduling
//Let loads of unit are P1 & P-P1
eqn=20+2*0.05*P1-26-2*0.03091*(P-P1);
P1=roots(eqn);//MW
P2=P-P1;//MW
disp(P2,P1,"Loads P1 & P2 in MW are : ");
C1=2000+20*P1+0.05*P1^2;//Rs./hour
C2=2750+26*P2+0.03091*P2^2;//Rs./hour
Cnew=C1+C2;//Rs./hour
disp(Cnew,"Total Cost(Rs./hour)");
saving=C-Cnew;//Rs./hour
disp(saving,"Total saving(Rs./hour)");
format('v',5);
Lt=P1-350;//MW//Tie line load
disp(Lt,"Tie line load from Plant1 to Plant2(MW) : ");
