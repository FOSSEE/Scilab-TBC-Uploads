//Section-10,Example-1,Page no.-CT.41
//To calculate Entropy change(dl_S).
clc;
n=5
C_p=(5/2)*8.314
T_2=1000
T_1=500
dl_S=n*C_p*log(T_2/T_1)
disp(dl_S,'Entropy change(JK^-1)')
