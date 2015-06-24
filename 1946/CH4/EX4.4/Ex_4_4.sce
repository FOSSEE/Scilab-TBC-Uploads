// Example 4.4:Dispersion
clc;
clear;
close;
Pb=1.2;//in nano second
D=30;//in Km
DL=((Pb*10^-3)/30);// Dispersion per unit length
disp(DL,"Dispersion in ns/m")
