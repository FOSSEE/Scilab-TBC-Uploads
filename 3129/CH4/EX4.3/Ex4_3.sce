//Finding the Base Drive Loss of a BJT
//Example 4.3(Page No- 135) 
clc
clear
//given data
Vbe_sat = 3;
Ib = 8;//A
fs = 10*10^3;//Hz
T = 1/fs;//sec
td = 0.5*10^-6;//sec
k = 0.5;
tr = 1*10^-6;//sec
tn = k*T-td-tr;//sec
ts = 5*10^-6;//sec
tf = 3*10^-6;//sec
ton = td + tr;
toff = ts + tf;
Pb = Ib * Vbe_sat;
P_B = Ib*Vbe_sat*(ton + tn + ts + tf)*fs;
printf('Ans: = The average power loss: %2.2fW.',P_B)
