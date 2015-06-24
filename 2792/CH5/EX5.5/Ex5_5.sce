clc
Na=10^17
disp("Na = "+string(Na)+"cm^-3") //initializing value of acceptor atoms
Nd=10^17
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor atoms
Dp1 = 12.5
disp("Dp1= "+string(Dp1)+"cm^2/s")//initializing value of hole diffusion coefficient for silicon
Dn1 = 35
disp("Dn1= "+string(Dn1)+"cm^2/s")//initializing value of electron diffusion coefficient for silicon
Dp2 = 10
disp("Dp2= "+string(Dp2)+"cm^2/s")//initializing value of hole diffusion coefficient for GaAs
Dn2 = 220
disp("Dn2= "+string(Dn2)+"cm^2/s")//initializing value of electron diffusion coefficient for GaAs
Tn = 10^-8
disp("Tn= "+string(Tn)+"s")//inializing value of electron minority carrier lifetime
Tp = 10^-8
disp("Tp= "+string(Tp)+"s")//inializing value of hole minority carrier lifetime
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
pn1 = 2.25*10^3
disp("pn1= "+string(pn1)+"cm^-3")//initializing value of holes concentration in n type for silicon
np1 = 2.25*10^3
disp("np1= "+string(np1)+"cm^-3")//initializing value of electron concentration in p type for silicon
pn2 = 3.38*10^-5
disp("pn2= "+string(pn2)+"cm^-3")//initializing value of holes concentration in n type for GaAs
np2 = 3.38*10^-5
disp("np2= "+string(np2)+"cm^-3")//initializing value of electron concentration in p type for GaAs
//Note : since value of holes and electrons in n- type and p type are not given for silicon and germanium thus we have assume it as above
//NOTE: nn=Nd and pp=Na
Lp1 = sqrt(Dp1*Tp)
disp("The hole diffusion length for silicon is ,Lp = sqrt(Dp1*Tp)= "+string(Lp1)+"cm")//calculation
Ln1 = sqrt(Dn1*Tn)
disp("The electron diffusion length for silicon is ,Ln = sqrt(Dn2*Tn)= "+string(Ln1)+"cm")//calculation
Lp2 = sqrt(Dp2*Tp)
disp("The hole diffusion length for silicon is ,Lp = sqrt(Dp2*Tp)= "+string(Lp2)+"cm")//calculation
Ln2 = sqrt(Dn2*Tn)
disp("The electron diffusion length for silicon is ,Ln = sqrt(Dn2*Tn)= "+string(Ln2)+"cm")//calculation
// NOTE: pn= (ni^2/nn) and np=(ni^2/pp)
// assume that the doants are fully ionised 
Jo1 = e*((((Dn1)/(Ln1))*np1)+(((Dp1)/(Lp1))*pn1))
disp("The prefactor current density for silicon is ,Jo1 = e*((((Dn1)/(Ln1))*np1)+(((Dp1)/(Lp1))*pn1))= "+string(Jo1)+"A/cm^2")//calculation
Jo2 = e*((((Dn2)/(Ln2))*np2)+(((Dp2)/(Lp2))*pn2))
disp("The prefactor current density for GaAs is ,Jo2 = e*((((Dn2)/(Ln2))*np2)+(((Dp2)/(Lp2))*pn2))= "+string(Jo2)+"A/cm^2")//calculation

