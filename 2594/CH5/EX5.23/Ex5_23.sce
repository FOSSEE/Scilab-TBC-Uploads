clc
Na=5*10^17
disp("Na = "+string(Na)+"cm^-3") //initializing value of acceptor concentration.
Nd=10^17
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor concentration.
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic concentration.
e=1.6*10^-19
disp("e = "+string(e)+"columns") //initializing value of charge of electrons.
K=1.38*10^-23
disp("K = "+string(K)+"J/k") //initializing value of boltzmann constant.
T=300
disp("T = "+string(T)+"K") //initializing value of temperature.
VBI=0.847
disp("VBI = "+string(VBI)+"V") //initializing value of VBI when VBI is reduced by 1%.
Vbi=((K*T/e)*log((Na*Nd)/(no)^2))
disp("(a)Built in potential potential,Vbi=((K*T/e)*log((Na*Nd)/(no)^2))="+string(Vbi)+" V")//calculation.
T=(e*VBI/K)*((log(Na*Nd/(no^2)))^-1)
disp("(b)T=(VBI*(e/K)*(1/(log((Na*Nd)/(no^2))))))="+string(T)+"K")//calculation.
//the answer for part (b) is not provided in the book.
