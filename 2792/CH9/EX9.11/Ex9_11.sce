clc
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
apsilen = 11.9*8.85*10^-14
disp("apsilen = "+string(apsilen)+"F/cm") //initializing value of relative permitivity
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
D = 10^-5
disp("D= "+string(D)+"cm")//initializing value of thickness
Na=10^14
disp("Na = "+string(Na)+"cm^-3") //initializing value of doped carrier concentration
dVT=.5
disp("dVT = "+string(dVT)+"V") //initializing value of change in threshold voltage
ni = 1.5*10^10
disp("ni= "+string(ni)+"cm^-3")//initializing value of intrinsic carrier concentration
apsilen_ox = 3.9*8.85*10^-14
disp("apsilen_ox= "+string(apsilen_ox))//initializing value of relative permitivity of oxide
phi_F= (-kbT*log(Na/ni))
disp("The potential phi_F= (-kbT*log(Na/ni))= "+string(phi_F)+" V")//calculation
dox = 5*10^-6
disp("dox= "+string(dox)+"cm")//initializing value of thickness of oxide
Cox = apsilen_ox/dox
disp("The oxide capicitance per unit area is ,Cox = apsilen_ox/dox= "+string(Cox)+" cm^-1")//calculation
phi_ms = -0.83
disp("phi_ms = "+string(phi_ms)+"V") 
VT = (phi_ms)-(2*phi_F)+((sqrt(4*e*apsilen*Na*(-phi_F)))/Cox)
disp("the threshold voltage is ,VT = (phi_ms)-(2*phi_F)+((sqrt(4*e*apsilen*Na*(-phi_F)))/Cox) = "+string(VT)+" V")//calculation
Na = (dVT*Cox)/(e*D)
disp("the dopant density is ,Na = (dVT*Cox)/(e*D) = "+string(Na)+" cm^-3")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 

