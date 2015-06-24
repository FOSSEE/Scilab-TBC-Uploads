//Section-1,Example-5,Page no.-AC.206
//To calculate the percentage of dry products by weight .if 50% excess air is supplied.
clc;
C=760
H=52
O=128
N=27
S=12
M_W=(((32/12)*C)+((16/2)*H)+((32/32)*S)-O)*(100/23)
V_Air=M_W*(22.4/28.94)*(1/1000)
W_CO2=(44/12)*760
W_SO2=(64/32)*12
W_N2=N+((77/100)*10116*(150/100))
W_O2=(((32/12)*C)+((16/2)*H)+((32/32)*S)-O)*(50/100)
T_W=W_CO2+W_SO2+W_N2+W_O2
P_CO2=(W_CO2/T_W)*100
disp(P_CO2,'Percentage composition of CO_2')
P_N2=(W_N2/T_W)*100
disp(P_N2,'Percentage composition of N_2')
P_O2=(W_O2/T_W)*100
disp(P_O2,'Percentage composition of O_2')
P_O2=(W_SO2/T_W)*100
disp(P_SO2,'Percentage composition of SO_2')
