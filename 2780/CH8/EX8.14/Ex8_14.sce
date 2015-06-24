clc
//to calculate wavelength and energy
//formula is lambda'-lambda=h*(1-cos phi)/(m0*c),where phi=90 degree, lambda'=2lambda ---------------eq(1)
//dellambda=2lambda-lambda=lambda ----------------------------eq(2)
h=6.62*10^-34 //planck's constant
c=3*10^8 //light speed in m.s
m0=9*10^-31 //mass of electron in kg
//from eq(1) and eq(2) ,we get
lambda=h/(m0*c)
disp("wavelength is lambda="+string(lambda)+"m")
E=h*c/lambda
disp("energy of the incident photon is E="+string(E)+"J")
