clc;
clear;
D=1.5;//in
//assuming CD=0.5 and verifying this value using value of Re
CD=0.5;
dice=1.84;//slugs/(ft^3); density of ice
dair=2.38*(10^(-3));//slugs/(ft^3)
U=(4*dice*32.2*(D/12)/(3*dair*CD))^0.5;//ft/sec
disp("mph",U*3600/5275,"The velocity of the updraft needed=")