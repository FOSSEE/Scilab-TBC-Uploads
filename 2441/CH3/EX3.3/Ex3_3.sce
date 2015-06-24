//Exa 3.3
clc;clear;close;
format('v',9);
P1=700;//MW(Load for 14 hours)
P2=500;//MW(Load for 10 hours)
B22=0.0005;//Loss Coefficient
t1=14;//hour
t2=10;//hour
r2=2.5;//Rs/hour/(m^3/sec)
//Characteristics of units : 
//C1=(24+0.02*P1)*P1;//Rs./hour
//W2=(6+0.0025*P2)*P2;//m^3/sec
lambda=37.944;//Rs./MWh(For peak load conditions)
P1=348.6;//MW(For peak load conditions)
P2=454.84;//MW(For peak load conditions)
PL=103.44;//MW(For peak load conditions)
lambda_dash=31.73;//Rs./MWh(For peak load conditions)
P1_dash=193.25;//MW(For peak off conditions)
P2_dash=378.25;//MW(For peak off conditions)
PL_dash=71.50;//MW(For peak off conditions)
W=[(6+0.0025*P2)*P2*t1+(6+0.0025*P2_dash)*P2_dash*t2]*3600/10^3;//m^3//D3ily water used
disp(W,"Daily water used by plant(m^3) : ");
C=(24+0.02*P1)*P1*t1+(24+0.02*P1_dash)*P1_dash*t2;//Rs.
disp(C,"Daily operating cost of plant(Rs.) : ");
