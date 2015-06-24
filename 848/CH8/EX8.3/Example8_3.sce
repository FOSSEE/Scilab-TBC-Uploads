//clear//
//Caption: Program to calculate link rise time
//Example8.3
//page 291
clear;
clc;
close;
t_tx = 15e-09; //transmitter rise time
t_mat = 21e-09; //material dispersion related rise time
t_mod = 3.9e-09; //rise time resulting from modal dispersion
t_rx =14e-09; //receiver rise time
tsys = sqrt(t_tx^2+t_mat^2+t_mod^2+t_rx^2)
disp(tsys*1e09,'link rise time in nano seconds tsys =')
//Result
//link rise time in nano seconds tsys = 29.617731 
