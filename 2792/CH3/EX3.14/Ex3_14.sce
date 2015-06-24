clc
KbT = 1.38*(10^-23)*300
disp("kbT = "+string(KbT)+"V") //initializing value of kbT at 300K
mu=.4
disp("mu = "+string(mu)+"m^2(Vs)^-1") //initializing value of mobility of p-type GaAs
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
Dn = (mu*KbT)/e
disp("The diffusion constant using einstein relation is Dn = (mu*KbT)/e= "+string(Dn)+"m^2/s")//calculation
T = 0.6*10^-9
disp("T= "+string(T)+"s")//initializing value of recombination time
Ln = sqrt(Dn*T)
disp("The diffusion length of p type GaAs is Ln = sqrt(Dn*T)= "+string(Ln)+"m")//calculation

