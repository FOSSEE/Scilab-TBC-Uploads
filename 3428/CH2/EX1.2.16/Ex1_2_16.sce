//Section-1,Example-3,Page no.-AC.205
//To calculate the percentage of excess air used for combustion.
clc;
C=0.54
H=0.065
O=0.03
N=0.018
M_W=(((32/12)*C)+((16/2)*H)-O)*(100/23)//Minimum weight of air required for combustion
W_CO2=(C*(44/12))
W_N2=N+(M_W*(77/100))
T_W=(W_CO2+W_N2)     //Total weight of dry products of combustion
B_W=(21.5-T_W)       //Balance weight
P_EA=(B_W/M_W)*100
disp(P_EA,' percentage of excess air used for combustion')
