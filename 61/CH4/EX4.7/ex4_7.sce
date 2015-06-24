//ex4.7
df=5*10^-3;    //derating factor in watts per degree celsius
T1=70;
T2=25;
P_D_max=1;    //in watts
del_P_D=df*(T1-T2);
P_D=P_D_max-del_P_D;
disp(P_D,'Power dissipated max at a temperature of 70 degree celsius(in watts)')