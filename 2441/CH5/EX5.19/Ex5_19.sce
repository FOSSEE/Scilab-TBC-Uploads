//Example 5.19
clc;clear;close;
format('v',6);
Tp=10;//sec
Tg=0;//sec
Tt=0;//sec
Kp=100;//Hz/p.u.MW
R=3;///Hz/CuMW
delPD=0.1;//p.u.
Ki=0.1;//constant
f=50;//Hz
s=poly(0,'s');
delFs=-Kp/Tp*[delPD/(s^2+s*{(1+Kp/R)/Tp})+Ki*Kp/Tp];
n=1;//cycle
time_error=n/f;//sec
disp(time_error,"Total time error(sec)");
