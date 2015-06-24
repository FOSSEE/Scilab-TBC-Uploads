// Exa 6.2
format('v',7);clc;clear;close;
// Given data
Z1 = 50;// in ohm
Z2 = 100;// in ohm
Z3 = 15;// in ohm
Z4 = 30;// in ohm
theta1 = 40;// in degree
theta2 = -90;// in degree
theta3 = 45;// in degree
theta4 = 30;// in degree
if abs(Z1*Z4)== abs(Z3*Z2) then
    flag1=1;
    disp("The condition of balance for magnitude is satisfied")
else
    flag1=0
    disp("The condition of balance for magnitude is not satisfied")
end
if theta1+theta4==theta2+theta3 then
    flag2=1
    disp("The condition of balance for phase is also satisfied")
else
    flag2=0
    disp("But the condition of balance for phase is not satisfied")
end
if flag1==1 then
    if flag2==1 then
        disp("Hence the bridge is under balanced condition")
    else
        disp("Hence the bridge is not under balanced condition")
    end
else
        disp("Hence the bridge is not under balanced condition")    
end
