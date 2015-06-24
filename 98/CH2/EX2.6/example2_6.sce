//chatper 2
//example 2_6
//page 23

clear;
clc;

capacity = 5*10^6;
h = 200;
n_overall = 75;
density=1000;

w = capacity*density*9.81;
printf("Weight of water available is W = %.2f N \n", w);
e = w*h*n_overall/3600/1000;
//e - electrical energy
printf("Electrical energy available = W*H*n_overall = %.2f kWh \n", e);

