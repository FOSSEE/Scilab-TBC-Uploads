clc
mu_n=600
disp("mu_n = "+string(mu_n)+"cm^2(Vs)^-1") //initializing value of channel mobility 
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
phi_ms = -1.13
disp("phi_ms = "+string(phi_ms)+"V") //initializing value of work function of metal semiconductor
Qss = 10^11
disp("Qss = "+string(Qss)+"cm^-2") //initializing value of oxide charge
VGS = 5
disp("VGS= "+string(VGS)+"V")//initializing value of gate voltage
Z=25*10^-6
disp("Z= "+string(Z)+"m")//initializing value of channel width
L=1.5*10^-6
disp("L= "+string(L)+"m")//initializing value of channel length
phi_F= (-kbT*log(Na/ni))
disp("The potential phi_F= (-kbT*log(Na/ni))= "+string(phi_F)+" V")//calculation
Cox = apsilen_ox/dox
disp("The oxide capicitance per unit area is ,Cox = apsilen_ox/dox= "+string(Cox)+" F/cm^-2")//calculation
Vfb = phi_ms-((Qss*e)/Cox)
disp("The flat band potential is Vfb = phi_ms-(Qss/Cox)= "+string(Vfb)+"V")//calculation
Vs = -(2*phi_F)
disp("The surface potential is ,Vs = -(2*phi_F)= "+string(Vs)+" V")//calculation
VT = Vfb+Vs+(sqrt(4*e*apsilen*Na*(-phi_F))/Cox)
disp("In the absence of any oxide charge, the threshold voltage is ,VT = Vfb+Vs+(sqrt(4*e*apsilen*Na*(-phi_F))/Cox) = "+string(VT)+" V")//calculation
ID = (Z*mu_n*Cox*(VGS-VT)^2)/(2*L)
disp("The saturation current is ,ID = (Z*mu_n*Cox*(VGS-VT)^2)/(2*L)= "+string(ID)+" A")//calculation

//NOTE: The value of Vfb in the text book is wrong for the above solution and thus the value of VT and saturation current is also wrong
