clc
mu_n=6000
disp("mu_n = "+string(mu_n)+"cm^2(Vs)^-1") //initializing value of channel mobility 
phi_b=0.8
disp("phi_b = "+string(phi_b)+"V") //initializing value of Schottky barrier height
kBT=0.026
disp("kBT = "+string(kBT)+"eV") //initializing value of multiplication of boltzmann constant and 300K temperature
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron 
h=0.25*10^-4
disp("h = "+string(h)+"cm") //initializing value of channel depth
Nd = 5*10^16
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of channel doping
Nc = 4.45*10^17
disp("Nc = "+string(Nc)+"cm^-3") //initializing value of effective density of of states for GaAS
L = 2*10^-4
disp("L = "+string(L)+"cm") //initializing value of channel length
Z = 25*10^-4
disp("Z = "+string(Z)+"cm") //initializing value of gate width
apsilen = 13.2*8.85*10^-14
disp("apsilen = "+string(apsilen)) //initializing value of relative permitivity
VGS1 = 0
disp("VGS1 = "+string(VGS1)+"V") //initializing value of gate bias voltage 1
VGS2 = -1
disp("VGS2 = "+string(VGS2)+"V") //initializing value of gate bias voltage 2
Vbi = (phi_b-(kBT*(log(Nc/Nd))))
disp("The built-in voltage is ,Vbi = (phi_b-(kBT*(log(Nc/Nd))))= "+string(Vbi)+"V")//calculation
Vp= (e*(h^2)*Nd)/(2*apsilen)
disp("The internal pinch off potential is ,Vp= (e*(h^2)*Nd)/(2*apsilen)= "+string(Vp)+"V")//calculation
go=(e*mu_n*Nd*Z*h)/(L)
disp("The value of go of the channel is ,go=(e*mu_n*Nd*Z*h)/(L)= "+string(go)+"ohm^-1")//calculation
ID_sat = go*((Vp/3)-Vbi+((2*(Vbi^1.5))/(3*(Vp^.5))))
disp("The value of saturation voltage is ,ID_sat = go*((Vp/3)-Vbi+((2*(Vbi^3/2))/(3*(Vp^.5)))= "+string(ID_sat)+"V")//calculation
ID1 = go*((Vp/3)-Vbi+VGS2+((2*((Vbi+abs(VGS2))^1.5))/(3*(Vp^.5))))
disp("The value of saturation current at VGS1 is ,ID(sat) = go*((Vp/3)-(Vbi)+VGS+((2*(Vbi-VGS)^(3/2))/(3*(Vp)^(1/2))))= "+string(ID1)+"A")//calculation
gm_sat= go*(1-((Vbi/Vp)^.5))
disp("The value of saturation conductance at VGS1 is ,gm_sat= go*(1-((Vbi/Vp)^.5))= "+string(gm_sat)+"S")//calculation
gm_sat= go*(1-((((Vbi+abs(VGS2))/Vp)^.5)))
disp("The value of saturation conductance at VGS2 is ,gm_sat= go*(1-((Vbi+VGS2)/Vp)^.5)= "+string(gm_sat)+"S")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 
