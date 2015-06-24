clc
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
me = 0.027*mo
disp("me* = "+string(me)+"kg") //initializing value of effective mass of GaAs
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
mh = 0.4*mo
disp("ml* = "+string(mh)+"kg") //initializing value of longitudinal mass
h=1.05*10^-34
disp("h= "+string(h))//initializing value of plank constant.
Eg = 0.35
disp("Eg = "+string(Eg)+"J") //initializing value of valence bandedge energy
ni =2*(((kbT*1.6*10^-19)/(2*(%pi)*h^2))^(3/2))*((me*mh)^(3/4))*(exp(-Eg/(2*kbT)))
disp("ni =2*(kbT/(2*(%pi)*h^2))^(3/2)*((me*mh)^(3/4))*(exp(-Eg/(2*kbT)))= "+string(ni)+"m^-3")//calculation
kbT = 0.05175
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 600K
ni =2*(((kbT*1.6*10^-19)/(2*(%pi)*h^2))^(3/2))*((me*mh)^(3/4))*(exp(-Eg/(2*kbT)))
disp("ni =2*(kbT/(2*(%pi)*h^2))^(3/2)*((me*mh)^(3/4))*(exp(-Eg/(2*kbT)))= "+string(ni)+"m^-3")//calculation
//Note: In the textbook wrong answer is given for intrinsic carrier concentration at 600K
