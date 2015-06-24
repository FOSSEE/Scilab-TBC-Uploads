// Exa 2.23
clc;
clear;
close;
// given :
Ic=10 // conduction current in ampere
epsilon_r=1 // relative permittivity
epsilon_0=8.854*10^-12 // permittivity in free space
epsilon=epsilon_r*epsilon_0 // permittivity
sigma=5.8*10^7 // conductivity in mho/m
disp("when f=1MHz")
f=1 // frequency in MHz
f=1*10^6 // frequency in Hz
Id=2*%pi*f*epsilon*Ic/sigma // displacement current
disp(Id,"displacement current when f=1MHz in A:")
disp("when f=100MHz")
f=100 // frequency in MHz
f=100*10^6 // frequency in Hz
Id=2*%pi*f*epsilon*Ic/sigma // displacement current
disp(Id,"displacement current when f=100MHz in A:")
