clc
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
apsilen = 11.9*8.85*10^-12
disp("apsilen = "+string(apsilen)+"F/m") //initializing value of relative permitivity
A= 7.85*10^-9
disp("A= "+string(A)+"m^2") //initializing value of area 
S= 3*10^24
disp("d(1/c2)/dV = S= "+string(S)+"F^-2V^-1") //initializing value of area of slope of the (1/c2) vs V relation
Nd = (2/(S*e*apsilen*(A^2)))
disp("The doping density in silicon is ,Nd = (2/(S*e*Es*(A^2)))= "+string(Nd)+"m^-3")//calculation
