//exa 1.16
clc;clear;close;
format('v',8);
L=[20 25 30 25 35 20];//MW
T=[6 4 2 4 4 4];//Hours
Lmax=max(L);//MW
disp(Lmax,"(a) Maximum demand(MW)");
E=L(1)*sum(T)+(L(2)-L(1))*T(2)+(L(3)-L(1))*T(3)+(L(4)-L(1))*T(4)+(L(5)-L(1))*T(5)+(L(6)-L(1))*T(6);//MWh
E=E*1000;//kWh
disp(E,"(b) Units generated per day(kWh)");
Lavg=E/sum(T);///kWh
Lavg=Lavg/1000;///MW
disp(Lavg,"(c) Average Load(MW)");
format('v',6);
LF=Lavg/Lmax*100;//%
disp(LF,"(d) Load Factor(%)");
