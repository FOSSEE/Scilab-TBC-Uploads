//exa 1.9
clc;clear;close;
format('v',6);
L1=50;//MW//Initial
t1=5;//hours
L2=50;//MW//5am
t2=4;//hours
L3=100;//MW//9am
t3=9;//hours
L4=100;//MW//6pm
t4=2;//hours
L5=150;//MW//8pm
t5=2;//hours
L6=80;//MW//10pm
t6=2;//hours
L7=50;//MW
//Load Duration Curve
l1=L5;//Mw
l2=L4;//MW
l3=L1;//MW
L=[l1,l2,l2,l3,l3]
T=0:6:24;//Duration in hours
subplot(2,1,1)
plot(T,L)
ylabel('Load(MW)');
xlabel('Hours');
title('Load Duration Curve');
//Energy Consumed
//Upto 5am
t1=5;//hours
E1=L1*t1;//MWh
//Upto 9am
t2=4;//hours
E2=E1+L2*t2;//MWh
//Upto 6pm
t3=9;//hours
E3=E2+L3*t3;//MWh
//Upto 10pm
t4=4;//hours
E4=E3+L4*t4;//MWh
//Upto 12pm
t4=2;//hours
E4=E3+L4*t4;//MWh
//Plotting Mass curve
T=[0,1,2,3,4];//MW
E=[0,E1,E2,E3,E4];//Mwh
subplot(2,1,2)
plot(T,E)
ylabel('Energy(MWh)');
xlabel('0-1: 12-5am 1-2: 5-9am 2-3: 9-6pm 3-4: 6-10pm above4: 10-12pm');
title('Mass Curve');
