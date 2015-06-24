clc
Na=10^17
disp("Na = "+string(Na)+"/cm^3") //initializing value of medium p doping concentration.
Nd=10^15
disp("Nd = "+string(Nd)+"/cm^3") //initializing value of light n doping .
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic carrier concentration.
e=1.6*10^-19
disp("e = "+string(e)+"columbs") //initializing value of charge of electrons.
K=1.38*10^-23
disp("K = "+string(K)+"J/k") //initializing value of boltzmann constant.
T=300
disp("T = "+string(T)+"K") //initializing value of temperature.
Vj=((K*T/e)*log((Na*Nd)/(no)^2))
disp("Junction potential,Vj=((K*T/e)*log((Na*Nd)/(no)^2))="+string(Vj)+"eV")//calculation.
