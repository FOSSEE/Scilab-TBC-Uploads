clc;
clear all;
Dm=80;//given max space wave communication distance
Ht=100;//given height of transmitting antenna in meters
Hr=(Dm-4*sqrt(Ht))*(Dm-4*sqrt(Ht))/16;//height of receiving antenna
disp(Hr,'height of receiving antenna in meters is');

