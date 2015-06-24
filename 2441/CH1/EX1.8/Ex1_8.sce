//exa 1.8
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
//Energy Required in 24 hours
E=L1*t1+(L2+L3)/2*t2+(L3+L4)/2*t3+(L4+L5)/2*t4+(L5+L6)/2*t5+(L6+L1)/2*t6;//MWh
disp(E,"Energy required in one day(MWh)");
DLF=E/L5/24*100;//%//Daily Load Factor
disp(DLF,"Daily Load Factor(%)");
//Plotting load curve
T=[0,1,2,3,4,5,6];//Slots
L=[L1,L2,L3,L4,L5,L6,L7];//MW
plot(T,L)
ylabel('Load(MW)');
xlabel('0-1: 12-5am 1-2: 5-9am 2-3: 9-6pm 3-4: 6-8pm 4-5:8-10pm 5-6 :10-12pm');
title('Chronological Load Curve');
