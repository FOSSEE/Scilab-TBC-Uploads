//Section-10,Example-3,Page no.-CT.42
//To calculate Entropy change(dl_S).
clc;
R=8.314
C_v=(3/2)*R
C_p=C_v+R
n=5
T_1=323
T_2=298
P_2=380
P_1=760
R=8.314
dl_S=n*((C_p*log(T_2/T_1))+(R*log(P_1/P_2)))
disp(dl_S,'Entropy change(JK^-1)')

