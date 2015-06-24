
//the velocity,V, of water flowing through a pipe,occurs in the formula,h=0.03*L*V^2/(D*2*g)
clear;
clc;
close;
disp("changing the subject of formula to V")
//V^2/(2*g)=H*d/(0.03*L)
V=string('sqrt(2*g*h*D/(0.03*L))')
