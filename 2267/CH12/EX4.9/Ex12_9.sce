//Part B Chapter 4 Example 9 
clc;
clear;
close;
d=120;//mm
D1=120;//mm
D2=60;//mm
ThBYTs=(D1^4-D2^4)/d^4;
WhBYWs=%pi/4*((D1^2-D2^2)/(%pi/4)/d^2);
disp("Strength ratio, Th/Ts is "+string(ThBYTs));
disp("Weight ratio, Wh/Ws is "+string(WhBYWs));

