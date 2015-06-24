//Section-1,Example-7,Page no.-AC.208
//To calculate the percentage of dry products of combustion by weight.
clc;
C=810
H=50
O=85
N=10
S=10
M_W=(((32/12)*C)+((16/2)*H)+((32/32)*S)-O)*(100/23)
W_CO2=(44/12)*C
W_SO2=(64/32)*S
W_N2=N+((77/100)*M_W)
T_W=W_CO2+W_SO2+W_N2
P_CO2=(W_CO2/T_W)*100
disp(P_CO2,'Percentage composition of CO_2')
P_N2=(W_N2/T_W)*100
disp(P_N2,'Percentage composition of N_2')
P_SO2=(W_SO2/T_W)*100
disp(P_SO2,'Percentage composition of SO_2')
