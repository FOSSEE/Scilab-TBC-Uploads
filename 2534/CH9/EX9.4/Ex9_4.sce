//Ex9_4
clc
gm1= 2*10^-3; gm2 =4*10^-3//conductance
disp("gm1 = "+string(gm1)+"mho")
disp("gm2 = "+string(gm2)+"mho")
Effective_gm = gm1+gm2
disp("Effective gm = gm1 + gm2 = "+string(Effective_gm)+"mho")//resulant conductance
rd1 = 20*10^3; rd2 = 30*10^3//resistances
Effective_rd = (rd1*rd2)/(rd1+rd2)
disp("rd1 = "+string(rd1)+"ohm")
disp("rd2 = "+string(rd2)+"ohm")
disp("Effective rd = (rd1*rd2)/(rd1+rd2) = "+string(Effective_rd)+"ohm")//resulant resistance



