//Section-10,Example-2,Page no.-CT.41
//To calculate Entropy change(dl_S).
clc;
n=10
C_v=(3/2)*R
T_2=323
T_1=298
V_2=2
V_1=1
R=8.314
dl_S=n*((C_v*log(T_2/T_1))+(R*log(V_2/V_1)))
disp(dl_S,'Entropy change(JK^-1)')
