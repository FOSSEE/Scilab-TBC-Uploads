clc
Nc=2.8*10^19
disp("Nc = "+string(Nc)+" /cm^3") //initializing value of number of electron in the conduction band.
Nv=1.04*10^19
disp("Nv = "+string(Nv)+" /cm^3") //initializing value of number of electron in the valence band..
no=1.5*10^10
disp("no = "+string(no)+" cm^-3") //initializing value of intrinsic carrier  concentration.
e=1.6*10^-19
disp("e = "+string(e)+" columbs") //initializing value of charge of electrons.
K=8.62*10^-5
disp("K = "+string(K)+" J/k") //initializing value of boltzmann constant.
T=300
disp("T = "+string(T)+" K") //initializing value of temperature.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
Ec_Ef=0.21
disp("Ec_Ef = "+string(Ec_Ef)+" eV") //initializing value of energy difference between conduction band and fermi level.
Ef_Ev=0.18
disp("Ef_Ev = "+string(Ef_Ev)+" eV") //initializing value of energy difference between fermi level and valence band.
Nd=(Nc/exp((Ec_Ef)/(K*T)))
disp("Nd=(Nc/exp((Ec-Ef)/(K*T))))="+string(Nd)+" cm^-3")//calculation.
Na=(Nv/exp((Ef_Ev)/(K*T)))
disp("Na=(Nv/exp((Ef-Ev)/(K*T))))="+string(Na)+" cm^-3")//calculation.
Vbi=(Vt*(log(Na*Nd/(no^2))))
disp("Built in potential potential,Vbi=(Vt*(log(Na*Nd/(no^2))))="+string(Vbi)+" V")//calculation.
