clc
clear
P=.5;    //P=V_g*I_g
V=[0.01:0.01:.25];
plot2d(P./V);
xlabel('I_g in A');
ylabel('V_g in V');

t=poly(0,'t');
P1=P*t/(2*t);
printf('average gate power dissipation(in watts)');
disp(P1);