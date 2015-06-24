//Exa 16.1
clc;
clear;
close;
//given data :
disp("The data of the problem are summarized below : ");
disp("Machine                   Products           Limit on ");
disp("                        P1         P2       machine hours");
disp("Lathe                    5         10            60");
disp("Milling                  4          4            40");
disp("Profit/unit              6          8");
disp("Let X1 be the production volume of the product.P1, and");
disp("X2 be the production volume of the product,P2.");
disp("The corresponding linear programming model to determine the production volume of each product such that the total profit is maximized is as shown below : ");
disp("maximize Z = 6*X1 + 8*X2");
disp("subject to");
disp("5*X1+10*X2 <= 60")
disp("4*X1+4*X2 <= 40")
disp("X1,X2 >= 0")