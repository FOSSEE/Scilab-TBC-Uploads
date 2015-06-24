//exa 1.6
clc;clear;close;
format('v',6);
//12 to 5 am & 10 to 12 am
L1=20;//MW
E1=L1*24;//MWh
//5 to 9 am
L2=40;//MW
E2=E1+(L2-L1)*17;//MWh
//9 to 6 pm
L3=80;//MW
E3=E2+(L3-L2)*13;//MWh
//6 to 10 pm
L4=100;//MW
E4=E3+(L4-L3)*4;//MWh
//Plotting Energy load curve
L=[0,L1,L2,L3,L4];//MW
E=[0,E1,E2,E3,E4];//Mwh
subplot(2,1,1)
plot(E,L)
xlabel('Energy(MWh)');
ylabel('Load(MW)');
title('Energy Load Curve');
//Energy Supplied
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
