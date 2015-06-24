clc
ni = 1.5*10^10
disp("ni= "+string(ni)+"cm^-3")//initializing value of intrinsic carrier concentration
Na = 10^18
disp("Na = "+string(Na)+"cm^-3") //initializing value of p+ doping
Nd = 10^17
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of n channel doping
kBT=0.026
disp("kBT = "+string(kBT)+"eV") //initializing value of multiplication of boltzmann constant and 300K temperature
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron 
Vbi= (kBT)*((log((Na*Nd)/ni^2)))
disp("The built in voltage of a p+n diode is ,Vbi= (kBT)*((log((Na*Nd)/Ni^2)))= "+string(Vbi)+"V")//calculation
h=.25*10^-4
disp("h = "+string(h)+"cm") //initializing value of width of the channel
apsilen = 11.9*8.85*10^-14
disp("apsilen = "+string(apsilen)+"F/cm") //initializing value of relative permitivity
Vp= (e*(h^2)*Nd)/(2*apsilen)
disp("The total volage drop required to pinch the channel is ,Vp= (e*(h^2)*Nd)/(2*apsilen)= "+string(Vp)+"V")//calculation
VG= Vbi-Vp
disp("The pinch off at gate bias is ,VG= Vbi-Vp= "+string(VG)+"V")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 

