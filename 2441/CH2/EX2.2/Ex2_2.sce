//exa 2.2
clc;clear;close;
format('v',8);
//For equal incremental cost
L1=125;//MW
L2=100;//MW
//For equal sharing
L=(L1+L2)/2;//MW
//Change in cost Unit 1
dC1=integrate('0.2*P1+30','P1',L1,L);//Rs./hour
//Change in cost Unit 2
dC2=integrate('0.15*P2+40','P2',L2,L);//Rs./hour
dCyearly=(dC1+dC2)*24*365;//Rs./year
disp(dCyearly,"Saving per year in economic load allocation(Rs./year)");
//Answer in the textbook is not accurate.
