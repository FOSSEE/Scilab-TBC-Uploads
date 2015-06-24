//Section-1,Example-3,Page no.-AC.173
clc;
C=750
C_1=75
H=52
H_1=5.2
O=121
O_1=12.1
S=0
Net_O2=((32/12)*C)+((16/2)*H)-O
W_air=Net_O2*(100/23)*10^-3
disp(W_air,'Weight of air required(kg)')
W_air40=W_air*(140/100)
disp(W_air40,'Weight of air required when 40% excess air is supplied(kg)')
GCV=(1/100)*((8080*C_1)+(34500*(H_1-(O_1/8)))+(2240*S))
disp(GCV,'Gross calorific value(kCal/kg)')
NCV=GCV-(0.09*H_1*587)
disp(NCV,'Net calorific value(kCal/kg)')
