// Calculate the value of resistance after 15s
clc;
R0=29.44;
Rs=100;
t=15;
tc=5.5;
R_15=Rs+R0*[1-exp(-t/tc)];
disp(R_15,'value of resistance after 15s(ohm)')