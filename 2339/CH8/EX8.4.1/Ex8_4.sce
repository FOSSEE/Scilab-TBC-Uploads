clc
clear

n=1.35;
P1=1.013;
V1=1/60;
P2=7;
Et=0.85;
Em=0.9;

IP=[n/(n-1)]*[P1*100*V1]*[((P2/P1)^((n-1)/n))-1];
printf('Indicated Power= %2.1f kW',IP);
printf('\n');

BP=IP/(Et*Em);
printf('Brake Power= %2.1f kW',BP);
printf('\n');
