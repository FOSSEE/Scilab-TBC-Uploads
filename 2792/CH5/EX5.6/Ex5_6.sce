clc
Na=5*10^16
disp("Na = "+string(Na)+"cm^-3") //initializing value of acceptor atoms
Nd=5*10^17
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor atoms
Dp = 15
disp("Dp= "+string(Dp)+"cm^2/s")//initializing value of hole diffusion coefficient 
Dn = 30
disp("Dn= "+string(Dn)+"cm^2/s")//initializing value of electron diffusion coefficient 
Tn = 10^-8
disp("Tn= "+string(Tn)+"s")//inializing value of electron minority carrier lifetime
Tp = 10^-7
disp("Tp= "+string(Tp)+"s")//inializing value of hole minority carrier lifetime
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
ni = 1.84*10^6
disp("ni= "+string(ni)+"cm^-3")//initializing value of intrinsic carrier concentration
np=ni^2/Na
disp("The electron conc in p type is ,np=ni^2/Na= "+string(np)+"cm^-3")//calculation
pn=ni^2/Nd
disp("The holes conc in n type is ,pn=ni^2/Nd= "+string(pn)+"cm^-3")//calculation
Lp = sqrt(Dp*Tp)
disp("The hole diffusion length is ,Lp = sqrt(Dp*Tp)= "+string(Lp)+"cm")//calculation
Ln = sqrt(Dn*Tn)
disp("The electron diffusion length is ,Ln = sqrt(Dn*Tn)= "+string(Ln)+"cm")//calculation
Gamma_inj = ((e*Dn*np)/(Ln))/(((e*Dn*np)/(Ln))+((e*Dp*pn)/(Lp)))
disp("The efficiency of diode is ,Gamma_inj = ((e*Dn*np)/(Ln))/(((e*Dn*np)/(Ln))+((e*Dp*pn)/(Lp)))= "+string(Gamma_inj))//calculation


