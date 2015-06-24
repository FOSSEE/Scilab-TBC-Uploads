// calculate the value of damping constant and frequency of damped oscillations
clc;
M=8*10^-3;
K=1000;
wn=(K/M)^0.5;
disp('for critically damped system eta=1')
B=2*(K*M);
disp(B,'Damping constant for critically damped system (N/ms-1)=')
eta=0.6;
wd=wn*(1-eta^2)^0.5;
disp(wd,'frequency of damped oscillations (rad/s)=')