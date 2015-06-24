// Exa 2.23
format('v',7);clc;clear;close;
// Given data
Vrange= 600;//range in V
del_A= 2.5*Vrange/100;//limiting error at full scale in V
V= 400;//voltage in V
PerError= del_A/V*100;//percentage error in %
disp("The limiting error is : ± "+string(PerError)+" %")
