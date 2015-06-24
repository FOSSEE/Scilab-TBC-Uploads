clc
nbo = 2.25*10^3
disp("nbo= "+string(nbo)+"cm^-3")//inializing value of majority carrier densities for the base in npn transistor
peo = 112.5
disp("peo= "+string(peo)+"cm^-3")//inializing value of majority carrier densities for the emitter in npn transistor
pco = 2.25*10^4
disp("pco= "+string(pco)+"cm^-3")//inializing value of majority carrier densities for the collector in npn transistor
// using law of mass action for a homogeneous semiconductor, we have relation peo*neo=nbo*pbo=ni^2 
ni_power_2 = nbo/peo
disp("square of electron density of ionisation electron for npn silicon transistor is ni^2 = nbo/peo="+string(ni_power_2)+"cm^-3") //calculation
pbo = 10^16
disp("pbo= "+string(pbo)+"cm^-3")//initializing value of p type base doping
V = (1-((peo)/(10*nbo)))
disp("The emitter efficiency (gamma)is,V = (1-((peo)/(10*nbo)))= "+string(V))//calculation
neo = ni_power_2*pbo
disp("The required emitter doping is,neo = ni_power_2*pbo = "+string(neo)+"cm^-3")//calculation
