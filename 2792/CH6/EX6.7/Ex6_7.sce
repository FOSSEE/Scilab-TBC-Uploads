clc
n = 10^18
disp("n= "+string(n)+"cm^-3") //initializing value of doping
W = 25*10^-4
disp("W= "+string(W)+"cm") //initializing value of width of the resistor
R = 100*10^3
disp("R = "+string(R)+"ohm") //initializing value of resistance
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
D= 5000*10^-8
disp("D= "+string(D)+"cm") //initializing value of thickness of film 
mu_=100
disp("mu_= "+string(mu_)+"cm^2(Vs)^-1") //initializing value of mobility
Ro = 1/(n*e*mu_*D)
disp("The sheet resistance of the film is ,Ro = 1/(n*e*mu_*D) = "+string(Ro)+" ohm/square")//calculation
L = (R*W)/Ro
disp("The length of the desired resistor is ,L = (R*W)/Ro = "+string(L)+" cm")//calculation



