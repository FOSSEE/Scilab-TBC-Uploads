clc
e=1.6*10^-19
disp("e = "+string(e)+"columb") //initializing the value of electronic charge.
n=1*10^16
disp("n = "+string(n)) //initializing the value of number of electrons per cm^3.
no=1.5*10^10
disp("no = "+string(no)+" /cm^3") //initializing value of electron hole pairs/cm^3..
T=300
disp("T = "+string(no)+" K") //initializing value of temperature.
k=1.38*10^-23
disp("k = "+string(k)+" J/K") //initializing value of boltzmann constant.
Ef=((k*T/e)*log(n/no))
disp("fermi level ,Ef-Efi=((k*T/e)*ln(n/no)) )= "+string(Ef)+" eV")//calculation
