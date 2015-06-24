//Section-14,Example-1,Page no.-PC.80
//To calculate K_p at 1000 K
clc;
T_1=925
T_2=1000
K_p925=18.5
dl_H=-71.09*10^3
R=8.314
//ln(K_p1000)/(K_p925)=(dl_H/R)*((1/T_1)-(1/T_2))
K=((dl_H)/R)*((1/T_1)-(1/T_2))
K_p1000=(%e^(K))*18.5
disp(K_p1000,'K_p at 1000 K')
