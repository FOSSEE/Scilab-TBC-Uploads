clc
//ex11.9
t=[0:0.000001:0.002];
V_i=3*cos(2000*%pi*t)-2*cos(6000*%pi*t);
//let A_1000 and A_3000 be the gains
A_1000_peak=10;
A_1000_phi=0;
A_3000_peak=2.5;
A_3000_phi=0;
//multiplying by respective gains
V_o=A_1000_peak*3*cos(2000*%pi*t+A_1000_phi)-A_3000_peak*2*cos(6000*%pi*t+A_3000_phi);
subplot(121)
xtitle('Input-voltage vs time','time in ms','Internal-voltage in volts')
plot(t*10^3,V_i)
subplot(122)
xtitle('Output-voltage vs time','time in ms','Output voltage in volts')
plot(t*10^3,V_o)
