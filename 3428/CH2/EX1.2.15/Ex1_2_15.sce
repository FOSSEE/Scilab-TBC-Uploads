//Section-1,Example-2,Page no.-AC.204
//To calculate the weight of air necessary for complete combustion of 1 kg of coal and the percentage composition of the dry products of combustion by weight.
clc;
C=754
H=53
S=13
T_O2=(C*(32/12))+(H*(16/2))+(S*(32/32))
L_O2=126
Net_O2=2321.7
Min_Air=Net_O2*(100/23)
D_CO2=(44/12)*C
D_SO2=(64/32)*S
D_N2=((77/100)*Min_Air)+32
T_D=D_CO2+D_SO2+D_N2
P_CO2=(D_CO2/T_D)*100
disp(P_CO2,'Percentage composition of CO_2')
P_SO2=(D_SO2/T_D)*100
disp(P_SO2,'Percentage composition of SO_2')
P_N2=(D_N2/T_D)*100
disp(P_N2,'Percentage composition of N_2')
