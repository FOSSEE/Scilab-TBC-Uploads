   //example-3.43   pg no-200-201
Ip=11<36.87;
PL=5808;
QL=4356;
Pm=6000;
Qm=8000;
P=PL+Pm;
Q=Qm-QL;
S=((P*P)+(Q*Q))^0.5;
X=P/S;    //POWER FACTOR
disp('i)ACTIVE POWER (P)   =  '+string (P)+' W')
disp('i)REACTIVE POWER (Q)   =  '+string (Q)+' vars(inductive)')
disp('i)APPARENT POWER (S)   =  '+string (S)+' A')
disp('i)power factor (X)   =  '+string (X)+' lagging')
