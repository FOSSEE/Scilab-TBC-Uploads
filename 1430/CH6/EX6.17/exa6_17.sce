// Example 6.17
// AC Superposition Calculations
// from figure 6.40(b),apply node equation we get
V_c1=poly(0,'V_c1');
P_1=(1/50+%i/10-%i/20)*V_c1-60/(%i*20); // Node equation
V_c1=roots(P_1);
// Now from figure 6.40(c)
V_c2=poly(0,'V_c2');
P_2=(1/50+%i/25-%i/8)*V_c2-(%i*3); // Node equation
V_c2=roots(P_2);
V_c1_m=abs(V_c1);
phase_v_c1=atan(imag(V_c1),real(V_c1))*(180/%pi);
V_c2_m=abs(V_c2);
phase_v_c2=atan(imag(V_c2),real(V_c2))*(180/%pi);
omega_1=5;
omega_2=2;
t=0:0.01:10;
v_c=V_c1_m*cos(omega_1*t+phase_v_c1)+V_c2_m*cos(omega_2*t+phase_v_c2);
plot(t,v_c,'r');
xlabel('t');
ylabel('v_c(t)')
title('Voltage Waveform')
