//Ex1.16
clc
ni = 2.5*(10^13) //intrinsic concentration
donor = 10^-7 //donor atoms
ND = 4.41*(10^22)*(10^-7) //donor atom concentration
e = 1.6*(10^-19) //electron charge
micro_n = 3800; micro_p = 1800 //charge mobility
disp("ni ="+string(ni)+" /cm.cube")
disp("donor = "+string(donor))
disp("n = ND ="+string(ND)+" /cm.cube")
disp("p = (ni^2)/ND = "+string((ni^2)/ND)+" /cm.cube") //hole concentration
disp("micro_n = 3800 cm.sq/V-s; micro_p = 1800 cm.sq/V-s")
sigma = ni*e*(micro_n+micro_p) //conductivity
disp("sigma = ni*e(micro_n + micro_p) = "+string(sigma)+"mho/cm")
