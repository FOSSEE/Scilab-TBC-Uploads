clc
mu_n=1000
disp("mu_n = "+string(mu_n)+"cm^2(Vs)^-1") //initializing value of channel mobility 
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron 
h=0.5*10^-4
disp("h = "+string(h)+"cm") //initializing value of channel depth
Nd = 10^16
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of channel doping
L = 2*10^-4
disp("L = "+string(L)+"cm") //initializing value of channel length
apsilen = 11.9*8.85*10^-14
disp("apsilen = "+string(apsilen)) //initializing value of relative permitivity
Vs = 10^7
disp("Vs = "+string(Vs)+"cm/s") //initializing value of saturated velocity
fT = (e*mu_n*Nd*(h^2))/(2*%pi*apsilen*(L^2))
disp("The maximum cutoff frequency of the device in the constant mobility model is ,fT = (e*mu_n*Nd*(h^2))/(2*%pi*apsilen*(L^2))= "+string(fT)+"Hz")//calculation
fT = Vs/(2*%pi*L)
disp("The maximum cutoff frequency of the device in the saturation velocity model is fT = Vs/(2*%pi*L)= "+string(fT)+"Hz")//calculation
