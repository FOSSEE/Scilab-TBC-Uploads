// Calculate the linear approximation
clc;
th1=30;
th2=60;
th0=th1+th2/2;
Rth1=4.8;
Rth2=6.2;
Rth0=5.5;
ath0=(1/Rth0)*(Rth2-Rth1)/(th2-th1);
disp(ath0,'alpha at o degree(/degree C)=')
disp('5.5[1+0.0085(th-45)]')