//Section-1,Example-5,Page no.-AC.164
//To calculate the quantity of air needed for complete combustion of 1 kg fuel.
clc;
W_C=800                 //(gm)
W_H=40                 //(gm)
W_S=20                  //(gm)
W_O=30                   //(gm)
WO_net=(((32/12)*W_C)+((16/2)*W_H)+((32/32)*W_S))-W_O           //Net O_2 //(gm)
M=WO_net*(100/23)*(160/100)*10^-3
disp(M,'mass of air needed for complete combustion(kg)')
