clc
//to calculate the wavelength of an electron of kinetic energy
mo=9.1*10^-31 //mass of an electron in kg
c=3*10^8 //speed of light in m/s 
K=1*10^6//kinetic energy in eV
h=6.62*10^-34 //planck's constant in J-s
//E=moc^2=81.9*10^-15/1.6*10^-19 eV=0.51MeV
E=0.51*10^6
lambda=(h*c)/(sqrt(K*(K+2*E))*1.6*10^-19)
disp("wavelength of an electron of kinetic energy is lambda="+string(lambda)+"m")

