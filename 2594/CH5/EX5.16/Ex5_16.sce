clc
Na=10^18
disp("Na = "+string(Na)+" cm^-3") //initializing value of acceptor concentration.
Nd=10^18
disp("Nd = "+string(Nd)+" cm^-3") //initializing value of donor concentration.
Vbi=1.4
disp("Vbi = "+string(Vbi)+" V") //initializing value of  built in voltage.
e=1.6*10^-19
disp("e = "+string(e)+" columbs") //initializing value of charge of electrons.
K=1.38*10^-23
disp("K = "+string(K)+" J/k") //initializing value of boltzmann constant.
T=300
disp("T = "+string(T)+" K") //initializing value of temperature.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
no=sqrt((Na*Nd)/(exp(Vbi/Vt)))
disp("no=sqrt((Na*Nd)/(exp(Vbi/Vt)))="+string(no)+" cm^-3")//calculation.
