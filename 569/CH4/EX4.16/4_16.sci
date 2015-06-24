// Calculate time lag and ratio of output and input
clc;
disp('when time period is 600s')
w=2*%pi/600;
tc=60;
T_lag=(1/w)*atan(w*tc);
disp(T_lag,'time lag (s)=')
M=1/((1+(w*tc)^2)^0.5);
disp(M,'ratio of output and input=')
disp('when time period is 120s')
w=2*%pi/120;
tc=60;
T_lag=(1/w)*atan(w*tc);
disp(T_lag,'time lag (s)=')
M=1/((1+(w*tc)^2)^0.5);
disp(M,'ratio of output and input=')