clc
Na=1*10^16
disp("Na = "+string(Na)+" cm^-3")//initializing the value of acceptor concentration.
Ea_Ev=0.045
disp("Ea_Ev = "+string(Ea_Ev))//initializing the value of boron acceptor ionization energy.
Nv=(1.04*10^19)
disp("Nv = "+string(Nv)+" cm^-3")//initializing the value of effective density of state for valence band.
Vt=(0.0259)
disp("Vt = "+string(Vt)+" eV")//initializing the value of thermal voltage.
p=(1+((Nv/(4*Na))*exp(-(Ea_Ev)/Vt)))^(-1)
disp("Fraction of holes that are still in the acceptor state,(pa/(pa+p))=(1+((Nv/4*Na)*exp(-(Ea-Ev)/Vt)))^(-1)= "+string(p))//calculation

//this is solved problem 2.11 of chapter 2.
