//exa 2.10
clc;clear;close;
format('v',5);
B11=0.001;//MW^-1
B22=0.0024;//MW^-1
B12=-0.0005;//MW^-1
//dC1/dP1=0.8*P1+16;//Rs./MWh
//dC2/dP2=0.08*P2+12;//Rs./MWh
lambda=20;
//Iterations for calculating value
P1(1)=0;
P2=0;
for i=2:1:10
    P1(i)=(0.2+0.001*P2(i-1))/0.006;
    P2(i)=(0.4+0.001*P1(i))/0.0088;
    if  P1(i)==P1(i-1) then
break;
    end
end
P1=P1(i);//MW
disp(P1,"Generation P1(MW) : ");
P2=P2(i);//MW
disp(P2,"Generation P2(MW) : ");
format('v',4);
PL=B11*P1^2+2*B12*P1*P2+B22*P2^2;//MW
disp(PL,"Transmission Loss(MW) : ");
format('v',5);
Pr=P1+P2-PL;//MW
disp(Pr,"Received Power(MW) : ");
