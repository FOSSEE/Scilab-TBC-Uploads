// Exa 6.28
format('v',7);clc;clear;close;
// Given data
Z1 = 200;// in ohm
Z2 = 400;// in ohm
Z3 = 300;// in ohm
Z4 = 600;// in ohm
theta1 = 60;// in degree
theta2 = -60;// in degree
theta3 = 0;// in degree
theta4 = 30;// in degree
if abs(Z1*Z4)== abs(Z3*Z2) then // Applying the condition of balance for magnitude
    flag1=1;
    disp("The condition of balance for magnitude is satisfied")
else
    flag1=0
    disp("The condition of balance for magnitude is not satisfied")
end
if theta1+theta4==theta2+theta3 then // Applying the condition of balance for phases
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
