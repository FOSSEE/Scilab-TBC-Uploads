clc
//ex11.10
t=[0:0.000001:0.002];
V_i=3*cos(2000*%pi*t)-2*cos(6000*%pi*t);
//for A
A_1000_A_peak=10;
A_1000_A_phi=0;
A_3000_A_peak=10;
A_3000_A_phi=0;
V_o_A=A_1000_A_peak*3*cos(2000*%pi*t+A_1000_A_phi)-A_3000_A_peak*2*cos(6000*%pi*t+A_3000_A_phi);
//for B
A_1000_B_peak=10;
A_1000_B_phi=-%pi/4;
A_3000_B_peak=10;
A_3000_B_phi=-3*%pi/4;
V_o_B=A_1000_B_peak*3*cos(2000*%pi*t+A_1000_B_phi)-A_3000_B_peak*2*cos(6000*%pi*t+A_3000_B_phi);
//for C
A_1000_C_peak=10;
A_1000_C_phi=-%pi/4;
A_3000_C_peak=10;
A_3000_C_phi=-%pi/4;
V_o_C=A_1000_C_peak*3*cos(2000*%pi*t+A_1000_C_phi)-A_3000_C_peak*2*cos(6000*%pi*t+A_3000_C_phi);
disp('VoA(t)=30cos(2000%pit)-10cos(6000%pit)')
disp('VoB(t)=30cos(2000%pit-%pi/4)-10cos(6000%pit-3%pi/4)')
disp('VoC(t)=30cos(2000%pit-%pi/4)-10cos(6000%pit-%pi/4)')
subplot(221)
xtitle('Output-voltage vs time for A','time in ms','Output-voltage for A in volts')
plot(t*10^3,V_o_A)
subplot(222)
xtitle('Output-voltage vs time for B','time in ms','Output voltage for B in volts')
plot(t*10^3,V_o_B)
subplot(223)
xtitle('Output-voltage vs time for C','time in ms','Output voltage for C in volts')
plot(t*10^3,V_o_C)
