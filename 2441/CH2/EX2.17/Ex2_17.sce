//exa 2.17
clc;clear;close;
format('v',7);
P=800;//MW(Total Load)
//Using Variable for Cost Curve Equation
P1=poly(0,'P1');P2=poly(0,'P2');P3=poly(0,'P3');
//Cost Curve Equation
C1=450+6.5*P1+0.0013*P1^2;//Rs./hour
C2=300+7.8*P2+0.0019*P2^2;//Rs./hour
C3=80+8.1*P3+0.005*P3^2;//Rs./hour
//Part(a) is not computational
//Part (b)
dC1BydP1=6.5+2*0.0013*P1;//Rs./MWh///eqn(1)
dC2BydP2=7.8+2*0.0019*P2;//Rs./MWh///eqn(2)
dC3BydP3=8.1+2*0.005*P3;//Rs./MWh///eqn(3)
//P1+P2+P3=P;//MW///eqn(4)
A1=[1 1 1];//Coefficient Matrix
B1=[800];//Coefficient Matrix
//Equating eqn(1) & (2)
A2=[2*0.0013 -2*0.0019 0];//Coefficient Matrix
B2=[7.8-6.5];//Coefficient Matrix
//Equating eqn(2) & (3)
A3=[0 2*0.0019 -2*0.005];//Coefficient Matrix
B3=[8.1-7.8];//Coefficient Matrix
//Solution By Matrix method
A=[A1;A2;A3];//Coefficient Matrix
B=[B1;B2;B3];//Coefficient Matrix
X=A^-1*B;//Solution Matrix
P1=X(1);//MW
P2=X(2);//MW
P3=X(3);//MW
disp("(b) According to optimum scheduling, Load distriution is :");
disp(P1,"P1(MW) : ");
disp(P2,"P2(MW) : ");
disp(P3,"P3(MW) : ");
//Part(c)
disp("(c) Optimum scheduling : ");
P1max=600;//MW
P1min=100;//MW
P2max=400;//MW
P2min=50;//MW
P3max=200;//MW
P3min=50;//MW
if P2<P2max&P2>P2min then
    disp("P2 is within maximum and minimum limits.");
    P1=P1max;//MW
    P3=P3min;//MW
    P2=P-P1-P3;//MW
end;
//Lambda=dC2/dP2 as P2 is niether maximum limit nor minimum limit.
dC2BydP2=7.8+2*0.0019*P2;//Rs./MWh
lambda=dC2BydP2;//Rs./MWh
dC1BydP1=6.5+2*0.0013*P1;//Rs./MWh
dC3BydP3=8.1+2*0.005*P3;//Rs./MWh
if dC1BydP1<lambda then
    disp("Condition for P1 satisfied.");
end;
if dC3BydP3>lambda then
    disp("Condition for P3 satisfied.");
end;
disp("Load distribution is : ");
disp(P1,"P1(MW) : ");
disp(P2,"P2(MW) : ");
disp(P3,"P3(MW) : ");
