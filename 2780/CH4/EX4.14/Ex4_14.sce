clc
//to calculate rotation of plane of polarisation of light
mur=1.53914
                //refractive index
mul=1.53920
lambda=6.5*10^-5 //wavelength in cm
d=0.02 //distance in cm
thetaR=180*(mul-mur)*d/lambda
disp("rotation of plane of polarisation of light is thetaR="+string(thetaR)+"degree")
