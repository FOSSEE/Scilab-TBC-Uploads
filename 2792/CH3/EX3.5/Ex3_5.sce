clc
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
me = 0.26*mo
disp("me* = "+string(me)+"kg") //initializing value of conductivity mass of silicon
v1=1.4*10^(6)
disp("v1 = "+string(v1)+"cm(s)^-1") //initializing value of velocity of silicon electron at 300K
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
v2=1.0*10^(7)
disp("v2 = "+string(v2)+"cm^(s)^-1") //initializing value of velocity of silicon electron at 300K
F1= 1000
disp("F1 = "+string(F1)+"V(cm)^-1") //initializing value of electric field 
F2= 100000
disp("F2 = "+string(F2)+"V(cm)^-1") //initializing value of electric field 
u1 = v1/(F1*10^4)
disp("The mobility for electrons in silicon (1 kV/cm) is u1 = v1/(F1*10^4) = "+string(u1)+"m^2/V.s")//calculation
u2 = v2/(F2*10^4)
disp("The mobility for electrons in silicon (100 kV/cm) is u2 = v2/(F2*10^4) = "+string(u2)+"m^2/V.s")//calculation
Tsc1 = (me*u1)/e
disp("The relaxation time of electrons in silicon at 1kV/cm is Tsc1 = (me*u1)/e= "+string(Tsc1)+"s")//calculatio
Tsc2 = (me*u2)/e
disp("The relaxation time of electrons in silicon at 100kV/cm is Tsc2 = (me*u2)/e= "+string(Tsc2)+"s")//calculation

