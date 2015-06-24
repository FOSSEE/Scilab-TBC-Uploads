// Calculate the true power as a percentage of measured power
clc;
I=30.4;
R=0.015;
I_true=I*(1+0.012);
R_true=R*(1-0.003);
P_true=(I_true^2)*R_true;
P_measured=(I^2)*R;
R=P_true*100/P_measured;
disp(R,'true power as a percentage of measured power(%)=' )