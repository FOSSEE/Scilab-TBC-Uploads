clc
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
me = 0.067*mo
disp("me* = "+string(me)+"kg") //initializing value of effective mass of GaAs
u1=8500*10^(-4)
disp("u1 = "+string(u1)+"m^2(Vs)^-1") //initializing value of mobility of pure GaAs
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
u2=5000*10^(-4)
disp("u2 = "+string(u2)+"m^2(Vs)^-1") //initializing value of mobility of impure GaAs
Tsc1 = (me*u1)/e
disp("The relaxation time of pure GaAs is Tsc1 = (me*u1)/e= "+string(Tsc1)+"s")//calculation
Tsc2 = (me*u2)/e
disp("The relaxation time of impure GaAs is Tsc2 = (me*u2)/e= "+string(Tsc2)+"s")//calculation
//using Mathieson rule
Tsc = ((1/Tsc2)-(1/Tsc1))^-1
disp("The impurity related time is Tsc(imp) = ((1/Tsc2)-(1/Tsc1))^-1 = "+string(Tsc)+"s")//calculation
