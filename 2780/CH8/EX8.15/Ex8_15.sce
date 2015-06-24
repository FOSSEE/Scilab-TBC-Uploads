clc
//to calculate wavelength of radiation and direction of emission
h=6.6*10^-34           //planck's constant in J-s
c=3*10^8                //speed of light in m/s
energy=510*10^3                //energy of photon in eV
lambda=h*c/(energy*1.6*10^-19)
mo=9.1*10^-31             //mass of electron in Kg
lambda1=lambda+h*(1-cos(%pi/2))/(mo*c)
disp("wavelength of radiation is lambda1="+string(lambda1)+"m")
theta=atand(lambda*sin(%pi/2)/(lambda1-lambda*cos(%pi/2)))
disp("direction of emission of electron is theta="+string(theta)+"degree")
