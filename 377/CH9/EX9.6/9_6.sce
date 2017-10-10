K=8.62*10^-5;
T=300;
a=K*T;
printf('\n The value of K*T is %fV',a);
I0=10^-6;
Va=0.15;
disp("rac=1/((I0/K*T)*exp(Va/K*T));");
rac=1/((I0/a)*exp(Va/a));
printf('\n The value of rac is %f ohm',rac);