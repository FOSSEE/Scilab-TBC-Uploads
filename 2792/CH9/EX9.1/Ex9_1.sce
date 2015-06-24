clc
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
apsilen = 11.9*8.85*10^-14
disp("apsilen = "+string(apsilen)+"F/cm") //initializing value of relative permitivity
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
Na=10^16
disp("Na = "+string(Na)+"cm^-3") //initializing value of doped carrier concentration
ni = 1.5*10^10
disp("ni= "+string(ni)+"cm^-3")//initializing value of intrinsic carrier concentration
phi_F= (-kbT*log(Na/ni))
disp("The potential phi_F= (-kbT*log(Na/ni))= "+string(phi_F)+"V")//calculation
W = sqrt((4*apsilen*(-phi_F))/(e*Na))*10^4
disp("The space charge width is ,W = sqrt((4*apsilen*phi_F)/e*Na)= "+string(W)+" micro_meter")//calculation

