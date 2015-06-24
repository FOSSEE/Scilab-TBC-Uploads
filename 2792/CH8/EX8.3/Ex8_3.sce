clc
ni = 1.5*10^10
disp("ni= "+string(ni)+"cm^-3")//initializing value of intrinsic carrier concentration
Nc = 4.45*10^17
disp("Nc = "+string(Nc)+"cm^-3") //initializing value of effective density of of states for GaAS
Nd = 10^17
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of n channel doping
kBT=0.026
disp("kBT = "+string(kBT)+"eV") //initializing value of multiplication of boltzmann constant and 300K temperature
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron 
h=0.25*10^-4
disp("h = "+string(h)+"cm") //initializing value of width of the channel
apsilen = 13.2*8.85*10^-14
disp("apsilen = "+string(apsilen)+"F/cm") //initializing value of relative permitivity
Vh = 0.8
disp("Vh = "+string(Vh)+"V") //initializing value of barrier height of gold schottky barrier
Vp= (e*(h^2)*Nd)/(2*apsilen)
disp("The total volage drop required to pinch the channel is ,Vp= (e*(h^2)*Nd)/(2*apsilen)= "+string(Vp)+"V")//calculation
Ecf= -(kBT)*(log(Nd/Nc))
disp("The difference between the conduction band and fermi level is ,Ecf= (kBT)*(log(Nd/Nc)))= "+string(Ecf)+"V")//calculation
Vbi= Vh-Ecf
disp("The built in potential is ,Vbi= Vh-Ecf= "+string(Vbi)+"V")//calculation
VGS= Vbi-Vp
disp("The pinch off at gate bias is ,VT=VGS= Vbi-Vp= "+string(VGS)+"V")//calculation

