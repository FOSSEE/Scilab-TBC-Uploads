//Chapter 14
//Example 14.1
//Page 380
//inertia
clear;clc;
WR2 = 5.82;
Smach = 1333;
n = 1800;
ft_lb = 746 / 550;
w = 2 * %pi * n / 60;
H = ft_lb * WR2 * w^2 / (2 * 32.2 * Smach);
disp(H,'The inertia constant in MJ/MVA is')
disp(H * Smach / 100,'Converting H to a 100-MVA system base,units in MJ/MVA')