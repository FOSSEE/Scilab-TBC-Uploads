//exa 2.23
clc;clear;close;
format('v',7);
//dF1/dP1=0.025*P1+15;//
//dF2/dP2=0.05*P2+20;//
PL=15.625;//MW
P1=125;//MW
lambda=24;//Rs. per MWh
B11=PL/P1^2;//Coefficient Loss
//dF2/dP2*L2=lambda
P2=poly(0,'P2');
L2=1;//penalty factor
eqn=(0.05*P2+20)*L2-lambda;
P2=roots(eqn);//MW
//PL=B11*P1^2
P1=poly(0,'P1');
dPLbydP1=2*B11*P1;
L1=1/(1-dPLbydP1);//penalty factor
eqn=(0.025*P1+15)-lambda/L1
P1=roots(numer(eqn));//MW
disp(P2,P1,"Generation P1 & P2 in MW are ");
PL=B11*P1^2;//MW
LD=P1-PL+P2;//MW
disp(LD,"Load Demand(MW) :");
