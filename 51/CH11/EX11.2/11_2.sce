clc;
clear;
D=4;//in
T1=540;//degree R
p1=100;//psia
T2=453;//degree R
p2=18.4;//psia
cv = 133;
R  =53.3;
dratio=(p1/T1)*(T2/p2);
sdif=(cv*(log(T2/T1)))+(R*(log(dratio)));//ft*lb/lbm*(degree R); change in entropy
disp("ft*lb/lbm*(degree R)",sdif,"The change in entropy between (1) and (2)=")