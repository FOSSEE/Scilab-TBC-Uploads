//Section-10,Example-3,Page no.-CT.53
//To find the temperature at which the water will boil in the given condition.
clc;
P_2=634
P_1=760
T_1=373
R=8.314
dl_Hv=2298*18
T_2=(dl_Hv*T_1)/((-T_1*log(P_2/P_1)*R)+dl_Hv)
disp(T_2,'Required temperature(K)')
