clc
//to calculate compton shift and wavelength
h=6.63*10^-34 //planck's constant in J-s
m0=9.11*10^-31 //mass of electron
c=3*10^8 //light speed in m/s
dellambda=h*(1-(1/sqrt(2)))/(m0*c)
lambda0=2*10^-10
lambda=dellambda+lambda0
disp("compton shift is dellambda="+string(dellambda)+"m")
disp("wavelength of the scattered X-rays is lambda="+string(lambda)+"m")
//to calculate fraction of energy lost by the photon in the collision
//energy lost =E0-E/E0=(hc/lambda0)-(hc/lambda)/(ha/lambda0)
//we get,
energylost=dellambda/lambda
disp("energylost ="+string(energylost)+"unitless") 
