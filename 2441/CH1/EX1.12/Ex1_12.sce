//exa 1.12
clc;clear;close;
format('v',5);
//Arranging data for Load Duration Curve
//week days 5-9pm load
L1=350;//MW
t1=4*5;//hours
//week days 8-12am & 1-5pm load
L2=250;//MW
t2=t1+8*5;//hours
//saturday & sunday 5-9pm load
L3=200;//MW
t3=t2+4*2;//hours
//All days 150MW load
L4=150;//MW
t4=t3+6*5+15*2;//hours
//All days 100MW load
L5=100;//MW
t5=t4+6*5+5*2;//hours
A=31600;//Total Load Curve Area
LF=A/L1/24/7*100;//%//Weekly load factor
disp(LF,"Weekly Load factor(%)");
disp("Load Duration Curve is shown in figure.");
//Load Duration Curve
L=[L1 L2 L3 L4 L5];//MW
T=[t1 t2 t3 t4 t5];//hours
plot2d2(T,L);
xtitle('Load Duration Curve','Time(Hours)','Load(MW)');
