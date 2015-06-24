clc;
clear;
Q=9;//gal/min
l=5;//ft
b=2;//ft
H=1.5;//ft
//deforming control volume
//hrate=Q/(l*b-A)
//A<<l*b
hrate=Q*12/(l*b*7.48);
disp("in./min",hrate,"Time rate of change of depth of water in tub =")