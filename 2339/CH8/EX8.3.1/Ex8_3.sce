clc
clear

N=300;
D=0.2;
L=0.24;
P1=1.01325;
P2=8*1.01325;
n=1.35;
Et=0.96;
Em=0.85;
Vs=(22/7)*(1/4)*D*D*L;

IP=[n/(n-1)]*[P1*Vs]*[N/60]*[((P2/P1)^((n-1)/n))-1];
printf('Indicated Power= %2.1f kW',IP*100);
printf('\n');

BP=IP/(Et*Em);
printf('Brake Power= %2.1f kW',BP*100);
printf('\n');
