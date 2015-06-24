//clear//
//Caption:Program to calculate link rise time
//Example8.4
//page292
clear;
clc;
close;
t_tx = 25e-12; //transmission rise time in sec
t_GVD = 12e-12; //GVD rise time in sec
t_rx = 0.14e-09; //receiver rise time in sec
tsys = sqrt(t_tx^2+t_GVD^2+t_rx^2)
disp(tsys*1e09,'link rise time in nano seconds tsys =')
//Result
//link rise time in nano seconds tsys = 0.1427200 
