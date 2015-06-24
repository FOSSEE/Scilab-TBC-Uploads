//ex3.4
P_D_max=400*10^-3;    //power in watts
df=3.2*10^-3    //derating factor in watts per celsius
del_T=(90-50);    //in celsius, temperature difference
P_D_derated=P_D_max-df*del_T;
disp(P_D_derated,'maximum power dissipated at 90 degree celsius')