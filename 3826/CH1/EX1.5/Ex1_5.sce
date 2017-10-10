//Example 1_5 page no:68
clc;
//given
original_losses = 18.5;//in KW
theta_f = 45;//in degree C
time_constant = 90;//in minutes
P = sqrt((theta_f/((1-exp(-30/90))*theta_f))*(original_losses^2));
disp(P,"the hour rating of the motor for this temperature rise is (in KW)");
//the result vary slightly with text book hence values are rounded off in text book

