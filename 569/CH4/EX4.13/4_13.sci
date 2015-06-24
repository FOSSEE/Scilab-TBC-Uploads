// Calculate damping ratio, natural frequency, frequency of damped oscillations, time constant
// and steady state error for ramp signal of 5V/s
clc;
K=(40*10^-6)/(%pi/2);
J=0.5*10^-6;
B=5*10^-6;
eta=B/(2*(K*J)^0.5);
disp(eta,'damping ratio=')
wn=(K/J)^0.5;
disp(wn,'natural frequency (rad/sec)')
wd=wn*(1-(eta)^2)^0.5;
disp(wd,'frequency of damped oscillations (rad/s)')
tc=1/wn;
disp(tc,'time constant (s)')
ess=2*eta/wn;
disp('for a ramp input of 5V, steady state error (V) =')
ess=5*2*eta/wn;
disp(ess,'')
T_lag=2*eta*tc;
disp(T_lag,'Time lag (s)')