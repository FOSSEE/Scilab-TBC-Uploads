// Example 9.1
// Zero-Input Response of an RL circuit
// From figure 9.5
L=60*10^-3;
R_eq=40+10;// Equivalent resistance
tau=L/R_eq; // Time constant
// Let us denote y(0^-) by y_bef and y(0^+) by y_aft
i_bef= 25/10; // t<0 , under steady state conditions
// form the continuity equation of inductor current we get
i_aft=i_bef;
v_bef=25;
t=0:0.0001:0.01;
i=i_aft*%e^(-t/tau); // t>0
v=-40*i; // t>0
subplot(2,1,1)
plot(t,i,'r');
xlabel('t')
ylabel('i(t)')
title('Current Waveform of inductor')
subplot(2,1,2)
plot(t,v,'-g')
xlabel('t')
ylabel('v(t)')
title('Voltage Waveform across 40-Ohm resistance')

