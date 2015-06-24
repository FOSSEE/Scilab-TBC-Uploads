// Exa 2.19
format('v',7);clc;clear;close;
// Given data
R1 = 120;//resistance in ohm
e1= 0.1;//error in %
R2 = 2700;//resistance in ohm
e2= 0.5;//error in %
R3 = 470;//resistance in ohm
e3= 0.5;//error in %
Rx = (R2*R3)/R1;//magnitude of the unknown resistance in ohm
disp(Rx,"The magnitude of the unknown resistance in Ω is : ")
e_T= e1+e2+e3;//limiting error  in %
// Per_e_T= del_R_T/R_T*100;
del_Rx= e_T*Rx/100;//limiting error  in Ω
disp("The limiting error (in percentage) is : ± "+string(e_T)+" %")
disp("The limiting error (in ohm) is : ± "+string(del_Rx)+" Ω")
disp("Hence the guaranteed values of the resistance is between")
disp(string(Rx-del_Rx)+" Ω to "+string(Rx+del_Rx)+" Ω")
