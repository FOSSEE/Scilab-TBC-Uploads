// Example 9.2
// Step response of an RC circuit
C=50*10^-6;
R_eq=(3000*6000)/(3000+6000); // From figure 9.10(a)
v_oc=(6*12)/(3+6);
tau=R_eq*C;
t=0:0.0001:1
v=v_oc*(1-exp(-t/tau)); // t>0
i=(v_oc-v)/(R_eq); // t>0
subplot(2,1,1)
plot(t,v,)
xlabel('t')
ylabel('v(t)')
title('Voltage waveform across capacitor')
subplot(2,1,2)
plot(t,i)
xlabel('t')
ylabel('i(t)')
title('Current waveform across capacitor')
