clc
disp("Let the intercept of the 1/c^2 Vs V plot is represented by Icv, which is the built in voltage")
Icv = .68
disp("Icv = "+string(Icv)+"V") //initializing value of intercept of the 1/c^2 Vs V plot and the built in voltage
Vbi = Icv
disp("the built in voltage is Vbi = "+string(Vbi)+"V")
disp("Let the slope of the intercept of the 1/c^2 Vs V plot is represented by dIcv")
dIcv=2.1*10^23
disp("dIcv = "+string(dIcv)+"F^-2 V^-1") //initializing value of slope of the intercept of the 1/c^2 Vs V plot
C = 7*10^-13
disp("C= "+string(C)+"F")//initializing value of capacitance
//NOTE: The above mentioned values are taken from the figure given in the question in textbook
apsilen = 11.9*8.85*10^-12
disp("apsilen = "+string(apsilen)+"F/m") //initializing value of relative permitivity
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
A = 10^-7
disp("A= "+string(A)+"m^2")//initializing value of diode area
ni = sqrt(2.25*10^20)
disp("ni = "+string(ni)+"cm^-3") //initializing value of  electron density of ionisation electron for silicon
Neff = 2/(A^2*e*apsilen*dIcv)
disp("The thickness of n region is ,Neff = 2/(A^2*e*apsilen*dIcv) = "+string(Neff)+" m^-3")//calculation
Neff = Neff/10^6
disp("The thickness of n region is ,Neff ="+string(Neff)+" cm^-3")//calculation
NaNd = exp(Vbi/kbT)*ni^2
disp("NaNd = exp(Vbi/kbT)*ni^2 = "+string(NaNd)+" cm^-6")//calculation
// solving for Na and Nd by creating a quadratic equation using the equations mentioned in the book
p1 = poly([Neff*NaNd, -NaNd, Neff], 'X', 'c')
//Neff*NaNd - NaNd*X + Neff*X^2 
disp (p1)
R= roots(p1)
Na= R(1)
Nd= R(2)
format ('e',10)
disp("Na = "+string(Na)+"cm^-3")
disp("Nd = "+string(Nd)+"cm^-3")
W = (apsilen*A)/C
disp("The thickness of n region is ,W = (apsilen*A)/C = "+string(W)+" m")//calculation

