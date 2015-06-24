clc
nbo = 2.25*10^3
disp("nbo= "+string(nbo)+"cm^-3")//inializing value of majority carrier densities for the base in npn transistor
peo = 112.5
disp("peo= "+string(peo)+"cm^-3")//inializing value of majority carrier densities for the emitter in npn transistor
Db = 30
disp("Db= "+string(Db)+"cm^2/s")//initializing value of diffusion coefficient in the base
De = 10
disp("De= "+string(De)+"cm^2/s")//initializing value of diffusion coefficient in the emitter
Nde = 10^18
disp("Nde= "+string(Nde)+"cm^-3")//inializing value of emitter doping
Nab = 10^16
disp("Nab= "+string(Nab)+"cm^-3")//inializing value of base doping
Lb = 10*10^-4
disp("Lb= "+string(Lb)+"cm")//inializing value of minority carrier diffusion length
Le = 4*10^-4
disp("Le= "+string(Le)+"cm")//inializing value of emitter diffusion length
kbT = 0.026
disp("kbT = "+string(kbT)+"eV/K") //initializing value of kbT at 300K
Wb = 0.5*10^-4
disp("Wb= "+string(Wb)+"cm")//initializing value of base width
We1 = 10*10^-4
disp("We= "+string(We1)+"cm")//initializing value of emitter width 
We2 = 10^-4
disp("We2= "+string(We2)+"cm")//initializing value of emitter width 
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
disp("for emitter thickness = 10*10^-4 cm")
gamma_1 = (((Db*nbo*coth(Wb/Lb))/(Lb))/(((Db*nbo*coth(Wb/Lb))/Lb)+((De*peo*coth(We1/Le))/Le)))
disp("The emitter efficiency gamma_1 = (((Db*nbo*Lb*coth(Wb/Lb))/(Lb))/(((Db*nbo*coth(Wb/Lb))/Lb)+((De*peo*coth(We/Le))/Le)))= "+string(gamma_1))//calculation
disp("for emitter thickness = 10^-4 cm")
gamma_2 = (((Db*nbo*coth(Wb/Lb))/(Lb))/(((Db*nbo*coth(Wb/Lb))/Lb)+((De*peo*coth(We2/Le))/Le)))
disp("The emitter efficiency (gamma)is,gamma_2 = (((Db*nbo*Lb*coth(Wb/Lb))/(Lb))/(((Db*nbo*coth(Wb/Lb))/Lb)+((De*peo*coth(We/Le))/Le)))= "+string(gamma_2))//calculation
//NOTE: In the textbook author has used approximate value for the calculation of gamma thus the above solution is differ from that of the gamma
