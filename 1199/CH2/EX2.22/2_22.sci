// 2.22
clc;
th1=100;
th2=130;
th0=th1+th2/2;
Rth1=573.40;
Rth2=605.52;
Rth0=589.48;
ath0=(1/Rth0)*(Rth2-Rth1)/(th2-th1);
printf("alpha at o degree= %.5f /degree C ",ath0)
disp('Linear approximation is: Rth= 589.48[1+0.00182(th-115)]')