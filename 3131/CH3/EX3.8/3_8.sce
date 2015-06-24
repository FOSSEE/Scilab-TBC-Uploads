clear all; clc;
disp("Ex 3_8")
disp("Equilibrium Equations")
disp("F_B = F_bi")
disp("F_C = F_c*cos(120)i + F_c*cos(135)j + F_c*cos(60)k")
disp("F_D = -0.333F_di - 0.667F_dj + 0.667F_dk")
disp("W = {-981k} N")
disp("For Equilibrium:")
disp("F_B + F_C + F_D + W = 0")
disp(" F_bi - 0.5F_ci - 0.707F_cj + 0.5F_ck -0.333F_di - 0.667F_dj + 0.667F_dk -981k = 0")
//Equating the respective i,j,k components to zero we find out the values of F_b, F_c, F_d
disp("F_c = 813 N")
disp("F_d = 862 N")
disp("F_b = 693.7 N")
disp(" ")
disp("The stretch of the spring s is:")
a=693.7/1500
printf('\n\ns = %0.3f m',a)
