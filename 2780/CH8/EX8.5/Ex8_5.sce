clc
//to calculate spacing of the crystal
h=6.62*10^-34 //planck's constant in J-s
m=9.1*10^-31 //mass of electron in kg
V=344 //voltage in V
e=1.6*10^-19
lambda=h/sqrt(2*m*e*V) //wavelength in m
//according to Bragg's law
n=1
//formula is 2*d*sintheta=n*lambda
d=n*lambda/(2*sin(%pi/6))
disp("the spacing of the crystal is d="+string(d)+"m")
