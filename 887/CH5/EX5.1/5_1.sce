clc
//ex5.1
R=50;
t=[0:0.000001:0.05];
V_t=100*cos(100*%pi*t);
V_m=100;      //peak value
V_rms=V_m/sqrt(2);
P_avg=(V_rms^2)/R;
P_t=V_t^2/R;
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(V_rms,'RMS value of voltage in volts')
disp(P_avg,'average power in watts')
subplot(121)
plot(t*10^3,V_t);
xtitle('voltage vs time','time in ms','voltage in volts')      //ms-milli seconds(10^-3)
subplot(122)
plot(t*10^3,P_t)
xtitle('power vs time','time in ms','power in watts')      //ms-milli seconds(10^-3)
