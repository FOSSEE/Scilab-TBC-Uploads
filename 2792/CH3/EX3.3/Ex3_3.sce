clc
un1=1000
disp("un1 = "+string(un1)+"cm^2(Vs)^-1") //initializing value of mobility of electron of silicon
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
un2 = 8000
disp("un2 = "+string(un2)+"cm^2(Vs)^-1") //initializing value of mobility of electron of GaAs
up1 = 350
disp("up1 = "+string(up1)+"cm^2(Vs)^-1") //initializing value of mobility of holes of silicon
up2 = 400
disp("up2 = "+string(up2)+"cm^2(Vs)^-1") //initializing value of mobility of holes of GaAs
ndoped = (50/100)*10^17
disp("ndoped = "+string(ndoped)+"cm^-3") //initializing value of electron density of doped semiconductor(50% of Nd=10^17 cm^-3)
ni = 1.5*10^10
disp("ni = "+string(ni)+"cm^-3") //initializing value of electron density of ionisation electron for silicon
pdoped = (ni)^2/ndoped
disp("The hole density of doped semiconductor is pdoped = (ni)^2/ndoped = "+string(pdoped)+"cm^-3")//calculation
//pdoped can be neglected 
Sdoped = ndoped*e*un1
disp("The conductivity of doped silicon is (sigma doped) Sdoped = ndoped*e*un = "+string(Sdoped)+"ohmcm^-1")//calculation
p1 = 1.5*10^10
disp("p1 = "+string(p1)+"cm^-3") //initializing value of hole density for undoped silicon
Sundoped = ni*e*un1+p1*e*up1
disp("The conductivity of undoped silicon is (sigma undoped)Sundoped = ni*e*un+p*e*up = "+string(Sundoped)+"ohmcm^-1")//calculation
Sdoped1 = ndoped*e*un2
disp("The conductivity of doped GaAs is (sigma doped) Sdoped = ndoped*e*un = "+string(Sdoped1)+"ohmcm^-1")//calculation
p2 = 1.84*10^6
disp("p2 = "+string(p2)+"cm^-3") //initializing value of hole density for undoped GaAs
ni1 = 1.84*10^6
disp("ni = "+string(ni1)+"cm^-3") //initializing value of electron density of ionisation electron for GaAs
Sundoped = ni1*e*un2+p2*e*up1
disp("The conductivity of undoped silicon is (sigma undoped) Sundoped = ni*e*un1+p1*e*up1 = "+string(Sundoped)+"ohmcm^-1")//calculation
