clc
Na=4*10^16
disp("Na = "+string(Na)+"cm^-3") //initializing value of acceptor concentration.
Nd=2*10^19
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor concentration.
no=1.8*10^6
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic carrier concentration.
e=1.6*10^-19
disp("e = "+string(e)+"columns") //initializing value of charge of electrons.
K=1.38*10^-23
disp("K = "+string(K)+"J/k") //initializing value of boltzmann constant.
T=300
disp("T = "+string(T)+"K") //initializing value of temperature.
Vbi=((K*T/e)*log((Na*Nd)/(no)^2))
disp("Built in potential potential,Vbi=((K*T/e)*log((Na*Nd)/(no)^2))="+string(Vbi)+"V")//calculation.
