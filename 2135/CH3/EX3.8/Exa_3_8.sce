//Exa 3.8
clc;
clear;
close;
format('v',6);

//Given Data :
Wdot=200;//W
t1=40;//degree centigrade
//Q2dot=20*(t1-t2);//W
//COP=Q2dot/W2dot=T2/(T1-T2)
//(t1-t2)/(W2dot/20)=(t1+273)/(t1-t2)
//20*t1^2+20*t2^2-20*2*t1*t2-t1*Wdot-273*Wdot
//(t2+273)/(t1-t2)=(t1-t2)/(Wdot/20)
//t2^2-(2*t1+(Wdot/20))*t2-273*(Wdot/20)+t1^2
P=[1 -(2*t1+(Wdot/20)) -273*(Wdot/20)+t1^2];
t2=roots(P);
t2=t2(2);//degree C
//Taken only -ve value as t2 cant be greater than t1
disp(t2,"Temperature of cold space(degree C)");
