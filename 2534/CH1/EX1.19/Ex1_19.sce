//Ex1.19
clc
micro_n = 1300 //eletron mobility
rho_n = 2 //resistivity
e = 1.6*10^-19 //electron charge
disp("micro_n ="+string(micro_n)+" cm.sq/V-s")
disp("rho_n = "+string(rho_n)+"ohm-cm")
disp("e"+string(e)+"C")
disp("nn = 1/(e*micro_n*rho_n) = "+string(1/(e*micro_n*rho_n))+" e/cm.cube") //number of pentavalent impurity

