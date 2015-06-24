//Ex1.15
clc
ni = 1.52*10^10 //intrinsic concentration
e=1.6*10^-19 //charge of electron
micro_n = 1350; micro_p = 480 // charge mobility
disp("e = "+string(e)+"C")
disp("ni = pi ="+string(ni)+"/cm.cube")
disp("micro_n = "+string(micro_n)+"cm.sq/V-s")
disp("micro_p = "+string(micro_p)+"cm.sq/V-s")
disp("sigma = e(micro_n*ni + micro_p*pi ) ="+string(e*(micro_n*ni + micro_p*ni))+"mho/cm") //conductivity
disp("rho = 1/sigma ="+string(1/(e*(micro_n*ni + micro_p*ni)))+"ohm-cm") //resistivity
