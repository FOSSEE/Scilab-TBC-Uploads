//Section-1,Example-6,Page no.-AC.164
//To calculate the quantity of air needed for complete combustion of 1 kg fuel.
clc;
W_C=720                 //(gm)
W_H=50                    //(gm)
W_S=30                     //(gm)
W_O=40                      //(gm)
WO_net=(((32/12)*W_C)+((16/2)*W_H)+((32/32)*W_S))-W_O             //(gm)
M=WO_net*(100/23)*10^-3
disp(M,'mass of air needed for complete combustion(kg)')
