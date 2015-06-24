clear;
clc;

x=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 ];//dividing the x axis in 24 hours

y=[30 30 30 30 20 20 20 20 20 8 8 8 8 8 8 8 8 8 8 8 8 8 8 5];//load in MW values

bar(x,y,1,'blue');                     //plotting the bargraph with a width of 1
xlabel('time in hours');
ylabel('load in MW');
title('LOAD DURATION CURVE');
