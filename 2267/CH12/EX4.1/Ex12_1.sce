//Part B Chapter 4 Example 1
clc;
clear;
close;
R=75;//mm
G=75;//GN/m^2
L=3;//m
tau_s=75;//MN/m^2
theta=tau_s*L/R/G*180/%pi;//degree
disp("Angle of twist is "+string(theta)+" degree.");
r=50;//mm
tau=tau_s*r/R;//MN/m^2
disp("Shear stress at inside surface is "+string(tau)+" MN/m^2");
