// Exa 3.16
clear;
clc; 
close;
//Part (a) is a derivation not a numerical problem
//Part (b) is a plot, and can be plotteed with any assumed value of R
R=5;//in ohm(assumed)
V=0:12;//in volt
I=-V/R//in Ampere
disp("V-I characteristics is shown in figure.")
plot(V,I);
title("V-I characteristics");
xlabel("V(volt)");
ylabel("I(Ampere)");
