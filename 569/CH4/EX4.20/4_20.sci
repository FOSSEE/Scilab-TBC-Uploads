//Calculate maximum and minimum value of indicated temperature, phase shift, time lag 
clc;
T_max=640;
T_min=600;
T_mean=(T_max+T_min)/2;
Ai=T_mean-T_min;
w=2*%pi/80;
tc=10;
Ao=Ai/{(1+(w*tc)^2)}^0.5;
T_max_indicated=T_mean+Ao;
disp(T_max_indicated,'Maximum value of indicated temperature(degree C)=')
T_min_indicated=T_mean-Ao;
disp(T_min_indicated,'Minimum value of indicated temperature(degree C)=')
ph=-atan(w*tc);
Time_lag=-ph/w;
disp(Time_lag,'Time lag (s)') 