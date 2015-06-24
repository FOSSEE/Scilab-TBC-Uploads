clc
Nd = 10^17
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of n channel doping
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron 
apsilen = 13.1*8.85*10^-14
disp("apsilen = "+string(apsilen)) //initializing value of relative permitivity
Vbi = 0.76
disp("Vbi = "+string(Vbi)+"V") //initializing value of built in potential
h= sqrt((2*apsilen*Vbi)/(e*Nd))
disp("The thickness at which the value of Vp is same at Vbi is ,h= sqrt((2*apsilen*Vbi)/(e*Nd))= "+string(h)+"cm")//calculation


