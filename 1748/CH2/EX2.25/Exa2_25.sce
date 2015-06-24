//Exa 2.25
clc;
clear;
close;
//Given data :
format('v',9);
Efficiency=0.9;//unitless
Output=50;//in H.P.
//formula : Efficiency=Output/(Output+Losses) 
Losses=((1-Efficiency)/Efficiency)*Output*735.5;//in watts
Losses=round(Losses);//round
//Let, Ststor Cu loss = Rotor Cu los = Iron loss=K
//Mechanical Loss = Iron Loss/3 = K/3
//TotalLosses=k+K+K+K/3
K=Losses*3/10;//in watts
Pin_rotor=Output*735.5+Losses;//in watts
Slip=K/Pin_rotor;//unitless
disp(Slip,"Slip :");
disp("or "+string(Slip*100)+"%");