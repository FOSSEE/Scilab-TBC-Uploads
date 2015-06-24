clc
A= 1
disp("A= "+string(A)+"cm^2") //initializing value of diode area
Na=5*10^17
disp("Na = "+string(Na)+"cm^-3") //initializing value of p side doping
Nd=10^16
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of n side doping
Dn = 20
disp("Dn= "+string(Dn)+"cm^2/s")//initializing value of electron diffusion coefficient
Dp = 10
disp("Dp= "+string(Dp)+"cm^2/s")//initializing value of hole diffusion coefficient
Tn = 3*10^-7
disp("Tn= "+string(Tn)+"s")//inializing value of electron minority carrier lifetime
Tp = 10^-7
disp("Tp= "+string(Tp)+"s")//inializing value of hole minority carrier lifetime
kbT = 0.026
disp("kbT = "+string(kbT)+"V/K") //initializing value of kbT at 300K
IL = 25*10^-3
disp("IL= "+string(IL)+"A")//initializing value of photocurrent or short circuit current of solar cell 
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
ni = 1.5*10^10
disp("ni = "+string(ni)+"cm^-3") //initializing value of electron density of ionisation electron for silicon
Io = 3.66*10^-11
disp("Io= "+string(Io)+"A")//initializing value of diode saturation current
Voc= (kbT)*log(1+(IL/Io))
disp("The open circuit voltage is ,Voc= (kbT)*log(1+(IL/Io))= "+string(Voc)+"V")//calculation
P = 0.8*IL*Voc 
disp("The power per solar cell is ,P = 0.8*IL*Voc = "+string(P)+"W")//calculation
// Note: Answer given in the book is incorrect it is 10.6 mW not 1.06 mW
N_series = 10/(0.9*Voc)
disp("The number of solar cell needed to produce output power 10V is ,N_series = 10/(0.9*Voc) = "+string(N_series))//calculation
N_parallel = 10/(0.9*IL*10)
disp("The number of solar cell needed to produce output power 10W is ,N_parallel = 10/(0.9*IL*10) = "+string(N_parallel))//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 

