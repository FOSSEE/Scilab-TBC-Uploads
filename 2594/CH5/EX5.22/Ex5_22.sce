clc
Na=10^16
disp("Na = "+string(Na)+"cm^-3") //initializing value of acceptor concentration.
Nd=5*10^15
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor concentration.
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic concentration.
Vbi=0.676
disp("Vbi = "+string(Vbi)+"V") //initializing value of built in voltage.
e=1.6*10^-19
disp("e = "+string(e)+"columns") //initializing value of charge of electrons.
K=1.38*10^-23
disp("K = "+string(K)+"J/k") //initializing value of boltzmann constant.
T=(Vbi*(e/K)*(1/(log((Na*Nd)/(no^2)))))
disp("T=(Vbi*(e/K)*(1/(log((Na*Nd)/(no^2))))))="+string(T)+"K")//calculation.
