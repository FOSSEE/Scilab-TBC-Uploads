// Exa 5.27
clc;
clear;
close;
format('v',9)
// Magnitude of loop gain, Mag_Tf= bita*100/(sqrt(1+(f/10^5)^2))^3         (i)
// Phase of loop gain, P_Tf= -3*atand(f/10^5)                                               (ii)
f_180= tand(180/3)*10^5;// from eq(ii), frequency at which phase becomes -180°
bita= 0.20;
T_f_180= bita*100/(sqrt(1+(f_180/10^5)^2))^3;// from eq (i), the magnitude of loop gain at f_180 for bita= 0.20
disp(T_f_180,"The magnitude of loop gain for beta = 0.20 is : ")
bita= 0.02;
T_f_180= bita*100/(sqrt(1+(f_180/10^5)^2))^3;// from eq (i), the magnitude of loop gain at f_180 for bita= 0.20
disp(T_f_180,"The magnitude of loop gain for beta = 0.20 is : ")
disp("Hence system is unstable for beta=0.20 and stable for beta= 0.02 because at beta= 0.20 gain is greater than 1.")

