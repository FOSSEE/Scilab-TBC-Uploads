clc
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
ml = 0.98*mo
disp("ml* = "+string(ml)+"kg") //initializing value of longitudinal mass
mt = 0.19*mo
disp("mt*= "+string(mt)+"kg")//initializing value of transverse mass
u=1500*10^(-4)
disp("u = "+string(u)+"m^2(Vs)^-1") //initializing value of mobility of pure silicon
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
Msig = 3*((2/mt)+(1/ml))^(-1)
disp("The conductivity mass is ,(Msig* = 3*((2/mt)+(1/ml))^(-1)))= "+string(Msig)+"kg")//calculation
Tsc = u*Msig/e
disp("The scattering time is ,Tsc = u*Msig/e= "+string(Tsc)+"s")//calculation

 

