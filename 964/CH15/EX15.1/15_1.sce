clc;
clear;
regular=[7 10 9 150];
premium=[11 8 6 175];
res_avail=[77 80];
//total profit(to be maximized)=z=150*x1+175*x2
//total gas used=7*x1+11*x2 (has to be less than 77 m^3/week)
//similarly other constraints are developed
disp("Maximize z=150*x1+175*x2")
disp("subject to")
disp("7*x1+11*x2<=77 (Material constraint)")
disp("10*x1+8*x2<=80 (Time constraint)")
disp("x1<=9 (Regular storage constraint)")
disp("x2<=6 (Premium storage constraint)")
disp("x1,x2>=0 (Positivity constraint)")