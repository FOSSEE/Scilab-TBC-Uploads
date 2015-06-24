clc
phi_b=0.8
disp("phi_b = "+string(phi_b)+"V") //initializing value of barrierpotential
T=300
disp("T = "+string(T)+"K") //initializing value of temperature
kBT=0.026
disp("kBT = "+string(kBT)+"eV") //initializing value of multiplication of boltzmann constant and 300K temperature
R_star=8
disp("R_star = "+string(R_star)+"Acm^-2K^-2") //initializing value of effective richardson constant
Dp=20
disp("Dp = "+string(Dp)+"cm^2/s") //initializing value of diffusion coefficient 
pn = 3.38*10^-5
disp("pn = "+string(pn)+"cm^-3") //initializing value of hole electron density 
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron 
Lp=1*10^-4
disp("Lp = "+string(Lp)+"cm") //initializing value of length
// for Schottky case Js = R_star*T^2*(exp(-(phi_b)/(kBT)))
Js = R_star*T^2*(exp(-(phi_b)/(kBT)))
disp("The gate current density is ,Js = R_star*T^2*(exp(-(phi_b)/(kBT))) = "+string(Js)+"A/cm^2")//calculation
// from p-n diode theory Jo = (e*Dp*pn)/(Lp)
Jo = (e*Dp*pn)/(Lp)
disp("The gate current density is ,Jo = (e*Dp*pn)/(Lp) = "+string(Jo)+"A/cm^2")//calculation
