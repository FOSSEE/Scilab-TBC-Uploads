//Section-10,Example-2,Page no.-CT.53
//To calculate the Vapour pressure of water at 100 degree celcius.
clc;
P_1=634
dl_Hv=41270
R=8.314
T_2=373
T_1=368
P_2=%e^(((dl_Hv/R)*((T_2-T_1)/(T_1*T_2)))+log(P_1)) 
disp(P_2,'Vapour pressure of water at 100 degree celcius(mm)')
