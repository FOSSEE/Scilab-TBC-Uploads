//Example No. 4.6
clc;
clear;
close;
format('v',6);

//Given Data : 
cycle1=50;//hp
t1=20;//sec
cycle2=100;//hp
t2=20;//sec
cycle3=150;//hp
t3=10;//sec
cycle4=120;//hp
t4=20;//sec
cycle5=0;//hp
t5=15;//sec
hp_rms=sqrt((cycle1^2*t1+cycle2^2*t2+cycle3^2*t3+cycle4^2*t4+cycle5^2*t5)/(t1+t2+t3+t4+t5));//hp
disp(hp_rms,"hp(rms) for the motor : ");
disp("We should choose 100hp motor.")
