//EXAMPLE 4.5
//determine ripple values in db;
clc
clear;
ap = 0.01//Peak passband ripple in dB
as = 70//min. stopband atteuation in dB
dp = 1-10^-(ap/20);
ds = 10^-(as/20); 
disp( dp,'dp = ');
disp( ds,'ds = '); 