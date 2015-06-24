//Example 3.3
clc;
clear;
close;
format('v',6);
//Given data :
p=2;//in kN/m^2
w_w=9.81;//in kN/m^3
w_alcohol=w_w*0.789;//in kN/m^3
w_m=13.6;//in kN/m^3
H=p/w_alcohol;//in m
disp(H,"Depth of alcohol in meter : ");
P_head_w=p/w_w;//m
disp(P_head_w,"Pressure head in terms of water in meter : ");
P_head_m=p/w_w/w_m;//m
disp(P_head_m,"Pressure head in terms of mercury in meter : ");
