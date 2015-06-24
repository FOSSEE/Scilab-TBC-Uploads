//Part A Chapter 4 Example 1
clc;
clear;
close;
format('v',6);
P=689*1000;//Pa
V1=0.04;//m^3
V2=0.045;//m^3
Wpaddle=-4.88;//kJ
Wpiston=integrate('689*1000','P',V1,V2)/1000;//kJ
disp("Work done on piston = "+string(Wpiston)+" kJ");
Wnet=Wpiston+Wpaddle;//kJ
disp("Work done on system = "+string(abs(Wnet))+" kJ");
