clc
kBT=0.026
disp("kBT = "+string(kBT)+"eV") //initializing value of multiplication of boltzmann constant and 300K temperature
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
m=0.08*mo
disp("m = "+string(m)+"kg") //initializing value of mass of electron in InAlAs
T = 300
disp("T= "+string(T)+"K")//initializing value of temperature
phi_b1 = 0.7
disp("schottky barrier heights(in volts) = phi_b1= "+string(phi_b1)+"eV")//initializing value of schottky barrier heights(in volts)
phi_b2 = 0.6
disp("schottky barrier heights(in volts) = phi_b2= "+string(phi_b2)+"eV")//initializing value of schottky barrier heights(in volts)
R = 120*(m/mo)
disp("The effective richardson constant is ,R* = 120*(m/mo) = "+string(R)+" A cm^-2 k^-2")//calculation
Js1 = R*(T^2)*(exp(-(phi_b1)/(kBT)))
disp("The saturation current density is ,Js(phi_b=0.7) = R*(T^2)*(exp(-(phi_b)/(kBT))) = "+string(Js1)+"A/cm^2")//calculation
Js2 = R*(T^2)*(exp(-(phi_b2)/(kBT)))
disp("The saturation current density is ,Js(phi_b=0.6) = R*(T^2)*(exp(-(phi_b)/(kBT))) = "+string(Js2)+"A/cm^2")//calculation
