clc
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
apsilen = 11.9*8.85*10^-14
disp("apsilen = "+string(apsilen)+"F/cm") //initializing value of relative permitivity
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
Na=3*10^16
disp("Na = "+string(Na)+"cm^-3") //initializing value of doped carrier concentration
ni = 1.5*10^10
disp("ni= "+string(ni)+"cm^-3")//initializing value of intrinsic carrier concentration
Vfb = -1.13
disp("Vfb= "+string(Vfb)+"eV")//initializing value of flat band voltage
Eox = 3.9*8.85*10^-14
disp("Eox= "+string(Eox))//initializing value of relative permitivity of oxide
dox = 500*10^-8
disp("dox= "+string(dox)+"cm")//initializing value of thickness of oxide
Nt = 10^11
disp("Nt= "+string(Nt)+"cm^-3")//initializing value trap density in oxide region
phi_F= (-kbT*log(Na/ni))
disp("The potential phi_F= (-kbT*log(Na/ni))= "+string(phi_F)+" V")//calculation
Qs = sqrt((4*apsilen*(-phi_F))*(e*Na))
disp("The maximum depletion width is ,Qs = sqrt((4*apsilen*(-phi_F))*(e*Na))= "+string(Qs)+" C cm^-2")//calculation
Vs = -(2*phi_F)
disp("The surface potential is ,Vs = -(2*phi_F)= "+string(Vs)+" V")//calculation
VT = Vfb+Vs+((Qs*dox)/Eox)
disp("In the absence of any oxide charge, the threshold voltage is ,VT = Vfb+Vs+((Qs*dox)/Eox) = "+string(VT)+" V")//calculation
dVT = -((e*Nt*dox)/Eox)
disp("when oxide has trap charges, the shift in threshold voltage is ,dVT = -((e*Nt*dox)/Eox) = "+string(dVT)+" V")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 
