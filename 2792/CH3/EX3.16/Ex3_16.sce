clc
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
kBT = 0.026
disp("kbT = "+string(kbT)+"V") //initializing value of kbT at 300K
sigma=10
disp("sigma = "+string(sigma)+"ohmcm^-1") //initializing value of conductivity
mu_n=1100
disp("mu_n = "+string(mu_n)+"cm^2(Vs)^-1") //initializing value of mobility of electrons
mu_p=400
disp("mu_p = "+string(mu_p)+"cm^2(Vs)^-1") //initializing value of mobility of holes
Nd = 10^17
disp("Nd= "+string(Nd)+"cm^-3")//initializing value of doping
n = sigma/(e*mu_n)
disp("The carrier concentration in n type material is n = sigma/(e*mu_n)= "+string(n)+"cm^-3")//calculation
// the answer in textbook is given in %
//The excess drops by 50% once light is off using this fact in below equation
T = -1/log(.5)
disp("The recombination time is T = -1/log(.5)= "+string(T)+"micro-sec")//calculation
Dp = mu_p*kbT
disp("The diffusion constant is Dp = mu_p*kbT = "+string(Dp)+"cm^2/s")//calculation
Lp = sqrt(Dp*T*10^-6)
disp("The diffusion length is Lp = sqrt(Dp*T*10^-6) = "+string(Lp)+"m")//calculation