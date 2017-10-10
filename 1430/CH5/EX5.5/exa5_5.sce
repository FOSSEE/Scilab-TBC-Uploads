// Example 5.5
// Inductor Waveform
t=poly(0,'t');
i=-(2*10^4)*t+2;
t_1=0:10^-7:10^-6;
i_1=horner(i,t_1);
// Form the current voltage relation of inductor
v=(50*10^-3)*(-2/10^-4);
p=v*i_1; // Instantaneous power delivered to the load
subplot(3,1,1)
plot(t_1,i_1,'-r')
xlabel('t(sec)')
ylabel('i(Amps)')
title('Current Wavefrom')
subplot(3,1,2)
plot(t_1,v,'-r')
xlabel('t(sec)')
ylabel('v(volts)')
title('Voltage Wavefrom')
subplot(3,1,3)
plot(t_1,p,'-r')
xlabel('t(sec)')
ylabel('P(Watts)')
title('Power Wavefrom')
