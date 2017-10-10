// To find voltage ratio and output

clc;
clear;

E1=11500;
E2=2300;

n1=(E1+E2)/E1; // Voltage ratio of 13.8 kV/11.5 kV auto transformer

Pi=100*(10^3);

P1=Pi*n1/(n1-1);

n2=(E1+E2)/E2; // Voltage ratio of 13.8 kV/2.3 kV auto transformer

P2=Pi*n2/(n2-1);

printf('The transformation ratio of the auto transformer is %g and is rated %g / %g kV, %g KVA \n',n1,(E1+E2)/1000,E1/1000,P1/1000)
printf('The transformation ratio of the auto transformer is %g and is rated %g / %g kV, %g KVA \n',n2,(E1+E2)/1000,E2/1000,P2/1000)
