//Example 5.21
clc;clear;close;
format('v',6);
C1=300;//MW
C2=400;//MW
G1=4;//%//droop characteristics of governer
G2=6;//%//droop characteristics of governer
L=400;//MW
f=50;//Hz
L1=C1*L/(C1+C2);//MW//Load on 300 MW generator
L2=L*C2/(C1+C2);//MW//Load on 400 MW generator
f01=f*(C1)/(C1-G1/100*L1);//Hz///No load frequency
disp(f01,"No load frequency of 300 MW generator(Hz)");
f02=f*(C2)/(C2-G2/100*L2);//Hz///No load frequency
disp(f02,"No load frequency of 400 MW generator(Hz)");
