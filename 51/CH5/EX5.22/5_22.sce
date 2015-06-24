clc;
clear;
z=500;//ft
//energy equation
//T2-T1 = (u2 - u1)/c = g*(z2 - z1)/c; c=specific heat of water = 1 Btu/(lbm* degree R)
diffT = 32.2*z/(778*32.2);//degree R
disp("degree R",diffT,"The temperature change associated with this flow=")