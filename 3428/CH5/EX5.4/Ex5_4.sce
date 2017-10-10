//Section-1,Example-4,Page no.-AC.164
//To calculate the mass of air needed for complete combustion of 1 kg fuel.
clc;
W_C=4000                 //(gm)
W_H=750                    //(gm)
W_O=250                   //(gm)
WO_net=(((32/12)*W_C)+((16/2)*W_H))-W_O         //Net O_2(gm)
M=WO_net*(100/23)*10^-3
disp(M,'mass of air needed for complete combustion(kg)')
