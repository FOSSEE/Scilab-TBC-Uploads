//Section-10,Example-1,Page no.-CT.53
//To calculate the Molar heat of Vaporization(dl_H_v) of ether.
clc;
P_2=760
P_1=750
T_2=307
T_1=306
R=8.314
dl_Hv=(log(P_2/P_1)*R)/((T_2-T_1)/(T_2*T_1))
disp(dl_Hv,' Molar heat of Vaporization(dl_H_v) of ether.')
