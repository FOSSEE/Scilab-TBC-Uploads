clc
clear

n=1.2;
m=5;
R=0.287;
T2=107+273;
T1=27+273;
IP=[n/(n-1)]*[m/60]*[R*(T2-T1)];
printf('Air Power: %3.2f kW',IP);
printf('\n');

BP=14;
Em=IP*100/BP;
printf('Mechanical Efficiency: %3.0f Percent',Em);
printf('\n');
