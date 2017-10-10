clc;
clear;
D_10=1.40 //diameter of the 10th ring in air in cm
D_10_liquid=1.27 //diameter of the 10th ring in liquid in cm

//calculation
myu=D_10^2/D_10_liquid^2
mprintf("The refractive index of the liquid is = %1.3f",myu)
