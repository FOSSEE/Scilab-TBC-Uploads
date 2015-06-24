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
apsilen_ox = 3.9*8.85*10^-14
disp("apsilen_ox= "+string(apsilen_ox))//initializing value of relative permitivity of oxide
dox = 500*10^-8
disp("dox= "+string(dox)+"cm")//initializing value of thickness of oxide
Cox= apsilen_ox/dox
disp("The oxide capacitance Cox= apsilen_ox/dox= "+string(Cox)+"F/cm^2")//calculation
phi_F= (-kbT*log(Na/ni))
disp("The potential phi_F= (-kbT*log(Na/ni))= "+string(phi_F)+" V")//calculation
Wmax = sqrt((4*apsilen*(-phi_F))/(e*Na))
disp("The maximum depletion width is ,Wmax = sqrt((4*apsilen*(-phi_F))/(e*Na))= "+string(Wmax)+" cm")//calculation
Cmin = (apsilen_ox/(dox+((apsilen_ox*Wmax)/apsilen)))
disp("The minimum capicitance is ,Cmin = (apsilen_ox/(dox+((apsilen_ox*Wmax)/apsilen)))= "+string(Cmin)+" F/cm^2")//calculation
Cfb = (apsilen_ox/((dox)+((apsilen_ox/apsilen)*(sqrt((kbT*apsilen)/(e*Na))))))
disp("The capicitance under flat band conditions is ,Cfb = (apsilen_ox/((dox)+((apsilen_ox/apsilen)*(sqrt((kbT*apsilen)/(e*Na)))))) = "+string(Cfb)+" F/cm^2")//calculation

