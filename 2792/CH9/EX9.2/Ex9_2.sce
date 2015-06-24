clc
kbT = 0.026
disp("kbT = "+string(kbT)+"V/K") //initializing value of kbT at 300K
Eg = 1.11
disp("Eg = "+string(Eg)+"eV") //initializing value of forbidden energy gap
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
Na=10^14
disp("Na = "+string(Na)+"cm^-3") //initializing value of doped carrier concentration
ni = 1.5*10^10
disp("ni= "+string(ni)+"cm^-3")//initializing value of intrinsic carrier concentration
phi_m = 4.1
disp("phi_m = "+string(phi_m)+"eV") //initializing value of work function of Al
Es = 4.15
disp("Es = "+string(Es)+"eV") //initializing value of electron affinity of silicon
EF= ((Eg/2)+kbT*log(Na/ni))
disp("The position of fermi level below conduction band is ,EF= (EFi+kbT*log(Na/ni))= "+string(EF)+"eV")//calculation
Vfb = phi_m-(Es+EF)
disp("The potential is ,Vfb = Qm-(Es+EF)= "+string(Vfb)+"eV")//calculation


