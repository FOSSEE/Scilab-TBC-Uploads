clc
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
Z = 10*10^-4
disp("Z = "+string(Z)+"cm") //initializing value of channel width
L = 1*10^-4
disp("L = "+string(L)+"cm") //initializing value of channel length
mu_n=700
disp("mu_n = "+string(mu_n)+"cm^2(Vs)^-1") //initializing value of channel mobility 
apsilen = 11.9*8.85*10^-14
disp("apsilen = "+string(apsilen)+"F/cm") //initializing value of relative permitivity
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
Na=4*10^14
disp("Na = "+string(Na)+"cm^-3") //initializing value of doped carrier concentration
ni = 1.5*10^10
disp("ni= "+string(ni)+"cm^-3")//initializing value of intrinsic carrier concentration
apsilen_ox = 3.9*8.85*10^-14
disp("apsilen_ox= "+string(apsilen_ox))//initializing value of relative permitivity of oxide
dox = 200*10^-8
disp("dox= "+string(dox)+"cm")//initializing value of thickness of oxide
VGS = 5
disp("VGS= "+string(VGS)+"V")//initializing value of gate voltage
Qs = sqrt(4*apsilen*(-phi_F)*e*Na)
disp("The maximum depletion width is ,Qs = sqrt(4*apsilen*(-phi_F)*e*Na)= "+string(Qs)+" cm^-2")//calculation
phi_F= (-kbT*log(Na/ni))
disp("The potential phi_F= (-kbT*log(Na/ni))= "+string(phi_F)+" V")//calculation
Cox = apsilen_ox/dox
disp("The oxide capicitance per unit area is ,Cox = apsilen_ox/dox= "+string(Cox)+" cm^-1")//calculation
Vs = -(2*phi_F)
disp("The surface potential is ,Vs = -(2*QF)= "+string(Vs)+" V")//calculation
VT = Vs+((Qs/Cox))
disp(" The threshold voltage is ,VT = Vs+((Qs/Cox)) = "+string(VT)+" V")//calculation
VDS = VGS-VT
disp("The saturation voltage is ,VDS = VGS-VT= "+string(VDS)+" V")//calculation
ID = (Z*mu_n*Cox*(VDS)^2)/(2*L)
disp("The saturation current is ,ID = (Z*mu_n*Cox*(VDS)^2)/(2*L)= "+string(ID)+" A")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 
