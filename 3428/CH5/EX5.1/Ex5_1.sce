//Section-1,Example-1,Page no.-AC.162
//To calculate the weight and volume of air required for the combustion of 1 kg of carbon.
clc;
W_O=(32/12)*1                     //Weight of O_2 reqd. by 1 kg Carbon(kg)
W_Air=(100/23)*W_O
disp(W_Air,'weight of air required(kg)')
W_Oxy=(22.4/32)*W_O*1000            //Volume occupied by 2.667kg O_2
V=((100/21)*W_Oxy)/1000
disp(V,'Volume of air required(m^3)')
