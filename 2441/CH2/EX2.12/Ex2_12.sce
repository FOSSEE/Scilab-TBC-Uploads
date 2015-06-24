//exa 2.12
clc;clear;close;
format('v',7);
//C1=7700+52.8*P1+5.5*10^-3*P1^2;//Rs./hour
//C2=2500+15*P2+0.05*P2^2;//Rs./hour
a1=7700;a2=2500;
b1=52.8;b2=15;
c1=5.5*10^-3;c2=0.05;
P1=poly(0,'P1');
P2=poly(0,'P2');
dC1bydP1=52.8+2*5.5*10^-3*P1;
dC2bydP2=15+2*0.05*P2;
disp("For 1200 MW Load :");
P=1200;//MW
//Let loads of unit are P1 & 1200-P1
//Economical Loading dC1/dP1=dC2/dP2
eqn=52.8+2*5.5*10^-3*P1-15-2*0.05*(1200-P1);
P1=roots(eqn);//MW
P2=1200-P1;//MW
disp(P1,"P1(MW) : ");
disp(P2,"P2(MW) : ");
disp("For 900 MW Load :");
P=900;//MW
clear('P1','P2');
P1=poly(0,'P1');
P2=poly(0,'P2');
//Let loads of unit are P1 & 900-P1
//Economical Loading dC1/dP1=dC2/dP2
eqn=52.8+2*5.5*10^-3*P1-15-2*0.05*(900-P1);
P1=roots(eqn);//MW
P2=900-P1;//MW
disp(P1,"P1(MW) : ");
disp(P2,"P2(MW) : ");
disp("For 500 MW Load :");
P=500;//MW
clear('P1','P2');
P1=poly(0,'P1');
P2=poly(0,'P2');
//Let loads of unit are P1 & 500-P1
//Economical Loading dC1/dP1=dC2/dP2
eqn=52.8+2*5.5*10^-3*P1-15-2*0.05*(500-P1);
P1=roots(eqn);//MW
P2=500-P1;//MW
//Minimum load is 200MW
if P1<200 then
    P2=P1+P2
    P1=0;
end
disp(P1,"P1(MW) : ");
disp(P2,"P2(MW) : ");
format('v',10);
C=(2500+15*P2+0.05*P2^2)*10;//Rs.//Operating cost for 10 hour
disp(C,"Operating cost for 10 hour(Rs.)");
disp("Other option : ");
P1=200;//MW
P2=300;//MW
disp(P1,"P1(MW) : ");
disp(P2,"P2(MW) : ");
C1=7700+52.8*P1+5.5*10^-3*P1^2;//Rs./hour
C2=2500+15*P2+0.05*P2^2;//Rs./hour
C=10*(C1+C2);//Rs.//Operating cost for 10 hour
disp(C,"Operating cost for 10 hour(Rs.)");
