clc
ni = 2.2*10^6
disp("ni = "+string(ni)+"cm^-3") //initializing value of electron density of ionisation electron for GaAs
Nde = 5*10^17
disp("Nde= "+string(Nde)+"cm^-3")//inializing value of emitter doping
Nab = 10^17
disp("Nab= "+string(Nab)+"cm^-3")//inializing value of base doping
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
Wb = 0.5*10^-4
disp("Wb= "+string(Wb)+"cm")//initializing value of base width
Db = 100
disp("Db= "+string(Db)+"cm^2/s")//initializing value of diffusion coefficient in the base
De = 15
disp("De= "+string(De)+"cm^2/s")//initializing value of diffusion coefficient in the emitter
Le = 1.5*10^-4
disp("Le= "+string(Le)+"cm")//inializing value of minority carrier emitter diffusion length
dEg = .36
disp("dEg= "+string(dEg)+"eV")//inializing value of Bandgap discontinuity
disp("        For GaAs          ")
peo1 = ni^2/Nde
disp("The  minority carrier densities for the emitter in npn GaAs BJT is,peo(GaAs) = ni1/Nde= "+string(peo1)+"cm^-3")//calculation
nbo1 = ni^2/Nab
disp("The  minority carrier densities for the base in npn GaAs BJT is,nbo = ni1/Nab= "+string(nbo1)+"cm^-3")//calculation
Ve1 = (1-((peo1*De*Wb)/(Db*nbo1*Le)))
disp("The emitter efficiency (gamma)is,Ve = (1-((peo*De*Wb)/(Db*nbo1*Le))) = "+string(Ve1))//calculation
disp("        For HBT          ")
peo2 = (peo1)*(exp(-(dEg/kbT)))
disp("The  minority carrier densities for the emitter in HBT is,peo(HBT) = (peo1)*(exp(-(dEg/kbT)))= "+string(peo2)+"cm^-3")//calculation
disp("in this case the emitter efficiency is essentially unity")
