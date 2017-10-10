// Example 7.7
// Calculating Line Voltage
V_a_m=15*10^3;// Volts
phase_a=90; // Degree
V_l=sqrt(3)*V_a_m; // The RMS line voltage
// From figure 7.19(c)
phase_ab=phase_a+30;
phase_bc=phase_ab-120;
phase_ca=phase_ab+120;
V_peak=sqrt(2)*V_l; // converting RMS value to peak value
// for omega= 10;
omega=100;
t=0:1:50;
v_ab=V_peak*cos(omega*t+phase_ab);
v_bc=V_peak*cos(omega*t+phase_bc);
v_ca=V_peak*cos(omega*t+phase_ca);
plot(t,v_ab,'-r',t,v_bc,'-g',t,v_ca,'-y');
xlabel('t');
ylabel('v(t)');
title('Voltage Waveform');
h1=legend(['v_ab';'v_bc';'v_ca']);
