clc
clear

V14=7.5;
P1=1;
T1=27+273;
P2=5.5;
n=1.3;
C=0.06;

T2=T1*[(P2/P1)^((n-1)/n)];
printf('T2: %3.1f K',T2);
printf('\n');

Ev=1+C-[C*((P2/P1)^((1/n)))];
printf('Vol Eff: %3.1f Percent',Ev*100);
printf('\n');

AP=[n/(n-1)]*[P1*100*V14/60]*[((P2/P1)^((n-1)/n))-1];
printf('Air Power: %3.1f kW',AP);
printf('\n');

Em=0.9;
BP=AP/Em;
printf('BP: %3.1f kW',BP);
printf('\n');

Emot=0.96;
EMC=BP/Emot;
printf('Electric Motor Capacity: %3.1f kW',EMC);
printf('\n');
