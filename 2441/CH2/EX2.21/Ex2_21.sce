//exa 2.21
clc;clear;close;
format('v',8);
//F1=(8*P1+0.024*P1^2+80)*10^6;//Btu./hr
//F2=(6*P2+0.04*P2^2+120)*10^6;//Btu./hr
Pmax=100;//MW
Pmin=10;//MW
C=2.5;//Rs./million Btu
//C1=2.5*F1/10^6
//C2=2.5*F2/10^6
//For Maximum Load of 100 MW
P1=poly(0,'P1');P2=poly(0,'P2');
dC1bydP1=8*2.5+2.5*2*0.024*P1;
dC2bydP2=6*2.5+2.5*2*0.04*P2;
//Let loads are P1 & Pmax-P1
//Economical loading lambda1=lambda2
eqn=8*2.5+2.5*2*0.024*P1-6*2.5-2.5*2*0.04*(Pmax-P1);
P1=roots(eqn);//MW
P2=Pmax-P1;//MW
C1=2.5*((8*P1+0.024*P1^2+80)*10^6)/10^6;//Rs./hour
C2=2.5*((6*P2+0.04*P2^2+120)*10^6)/10^6;//Rs./hour
C100=(C1+C2)*12;//Rs.(Total cost of 12 hours on 100MW load)
//For Maximum load of 50 MW
//Let loads are P1 & Pmax-P1
//Economical loading : lambda1=lambda2
Pmax1=50;//MW
clear('P1','P2');
P1=poly(0,'P1');P2=poly(0,'P2');
eqn=8*2.5+2.5*2*0.024*P1-6*2.5-2.5*2*0.04*(Pmax1-P1);
P1=roots(eqn);//MW
P2=Pmax1-P1;//MW
C1=2.5*((8*P1+0.024*P1^2+80)*10^6)/10^6;//Rs./hour
C2=2.5*((6*P2+0.04*P2^2+120)*10^6)/10^6;//Rs./hour
C50=(C1+C2)*12;//Rs.(Total cost of 12 hours on 50MW load)
C=C100+C50;//Rs.(Total cost for 24 hours)
disp(C,"Minimum total cost for 24 hours(Rs.) : ");
E=(Pmax*12+Pmax1*12)*10^3;//kWh
//Operating cost per unit energy
Co=C/E;//Rs./kWh
disp(Co,"Operating cost per unit energy(Rs./kWh) : ");
//Answer is wrong in the textbook. Calculation mistake in energy generation calculation & Cost calculation.
