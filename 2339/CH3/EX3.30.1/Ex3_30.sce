clc
clear

//Inputs
V1=0.028;
P1=1;
T1=27+273;
n=1.3;
V2=0.0046;
T3=T1;

T2=T1*((V1/V2)^(n-1));
printf('Temperature after compression: %1.2f K',T2);
printf('\n');

P2=P1*((V1/V2)^n);
W=((P1*100*V1)-(P2*100*V2))/(n-1);
printf('Work Done: %1.2f kJ',W);
printf('\n');

P3=(T3*P2)/T2;
printf('Final Pressure: %1.2f bar',P3);
printf('\n');



