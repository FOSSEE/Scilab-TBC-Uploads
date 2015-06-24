//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.4w
//calculation of the ratio of the lengths of the two wire

//given data
Ys=2*10^11//Young modulus(in N/m^2) of the steel wire
Yc=1.1*10^11//Young modulus(in N/m^2) of the copper wire

//calculation
//r = Ls/Lc......required ratio
r=Ys/Yc//required ratio

printf('the ratio of the lengths of the two wire(Ls/Lc) is %f:1',r)
