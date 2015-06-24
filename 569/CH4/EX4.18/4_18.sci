// Calculate maximum value of indicated temperature and delay time
clc;
T=120;
w=2*%pi/T;
tc1=40;
tc2=20;
M=[1/((1+(w*tc1)^2)^0.5)]*[1/((1+(w*tc2)^2)^0.5)];
M_temp=M*10;
disp(M_temp,'maximum value of indicated temperature (degree C)')
ph=[{atan(w*tc1)+atan(w*tc2)}];
T_lag=ph/w;
disp(T_lag,'Time lag (s)')