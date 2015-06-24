//Ex1.18
clc
micro_p = 1800 //hole mobility
rho_p = 1 //resistivity
e = 1.6*10^-19 //electorn charge
disp("micro_p ="+string(micro_p)+" cm.sq/V-s")
disp("rho_p = "+string(rho_p)+"ohm-cm")
disp("e = "+string(e)+"C")
disp("pp = 1/(e*micro_p*rho_p) = "+string(1/(e*micro_p*rho_p))+" holes/cm.cube") //number of trivalent impurity
