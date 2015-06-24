clc
un1=1000
disp("un1 = "+string(un1)+"cm^2(Vs)^-1") //initializing value of mobility of electron of silicon
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
un2 = 400
disp("un2 = "+string(un2)+"cm^2(Vs)^-1") //initializing value of mobility of electron of GaAs
up1 = 350
disp("up1 = "+string(up1)+"cm^2(Vs)^-1") //initializing value of mobility of holes of silicon
up2 = 8000
disp("up2 = "+string(up2)+"cm^2(Vs)^-1") //initializing value of mobility of holes of GaAs
ni = 1.5*10^10
disp("ni = "+string(ni)+"cm^-3") //initializing value of electron density of ionisation electron
nmax = 2.78*10^19
disp("nmax = "+string(nmax)+"cm^-3") //initializing value of maximum electron density for silicon
nmax1 = 7.72*10^18
disp("nmax1 = "+string(nmax1)+"cm^-3") //initializing value of maximum electron density for GaAs
Smax = nmax*e*un1
disp("The maximum conductivity for silicon is (sigma max) Smax = nmax*e*un = "+string(Smax)+"ohmcm^-1")//calculation
Smax1 = nmax1*e*un2
disp("The maximum conductivity of GaAs is (sigma max) Smax = nmax*e*un = "+string(Smax1)+"ohmcm^-1")//calculation
Smin = ni*e*((un1*sqrt(up1/un1))+(up1*sqrt(un1/up1)))
disp("The minimum conductivity of silicon is (sigma min)Smin = ni*e*((un1*sqrt(up1/un1))+(up1*sqrt(un1/up1))) = "+string(Smin)+"ohmcm^-1")//calculation
ni1 = 1.84*10^6
disp("ni = "+string(ni1)+"cm^-3") //initializing value of electron density of ionisation electron for GaAs
Smin1 = ni1*e*((un2*sqrt(up2/un2))+(up2*sqrt(un2/up2)))
disp("The minimum conductivity of GaAs is (sigma min)Smin1 = ni*e*((un2*sqrt(up2/un2))+(up2*sqrt(un2/up2))) = "+string(Smin1)+"ohmcm^-1")//calculation
