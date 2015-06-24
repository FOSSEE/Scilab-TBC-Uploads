clc
Na=5*10^16
disp("Na = "+string(Na)+"cm^-3") //initializing value of p side doping
Nd=5*10^17
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of n side doping
Dn = 30
disp("Dn= "+string(Dn)+"cm^2/s")//initializing value of electron diffusion coefficient
Dp = 15
disp("Dp= "+string(Dp)+"cm^2/s")//initializing value of hole diffusion coefficient
Tn = 10^-8
disp("Tn= "+string(Tn)+"s")//inializing value of electron minority carrier lifetime
Tp = 10^-7
disp("Tp= "+string(Tp)+"s")//inializing value of hole minority carrier lifetime
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
ni = 1.84*10^6
disp("ni = "+string(ni)+"cm^-3") //initializing value of intrinsic carrier concentration in GaAs
kbT = 0.026
disp("kbT = "+string(kbT)+"V/K") //initializing value of kbT at 300K
V = 1
disp("V = "+string(V)+"V") //initializing value of forward bias potential
nQr=.5
disp("nQr = "+string(nQr)) //initializing value of radiative recombination efficiency
np = ni^2/Na
disp(" np = ni^2/Na= "+string(np)+"cm^-3")//calculation
pn = ni^2/Nd
disp(" pn = ni^2/Nd= "+string(pn)+"cm^-3")//calculation
Ln = sqrt(Dn*Tn)
disp("The electron diffusion length is ,Ln = sqrt(Dn*Tn)= "+string(Ln)+"cm")//calculation
Lp = sqrt(Dp*Tp)
disp("The hole diffusion length is ,Lp = sqrt(Dp*Tp)= "+string(Lp)+"cm")//calculation
Yinj = ((e*Dn*np)/Ln)/(((e*Dn*np)/Ln)+((e*Dp*pn)/Lp))
disp("The injection efficiency is ,Yinj = ((e*Dn*np)/Ln)/(((e*Dn*np)/Ln)+((e*Dp*pn)/Lp))= "+string(Yinj))//calculation



