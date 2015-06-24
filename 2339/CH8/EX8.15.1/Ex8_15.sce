clc
clear

P1=1;
P2=5;
T1=27+273;
m=1;
R=0.287;

W1=m*R*T1*(log(P2/P1));
printf('Work in isothermal process: %3.1f kJ',W1);
printf('\n');

G=1.4;
W2=[G/(G-1)]*[m*R*T1]*[((P2/P1)^((G-1)/G))-1];
printf('Work in isentropic process: %3.0f kJ',W2);
printf('\n');

n=1.25;
W3=[n/(n-1)]*[m*R*T1]*[((P2/P1)^((n-1)/n))-1];
printf('Work in polytropic process: %3.1f kJ',W3);
printf('\n');
