clc
//to calculate angle of diffraction for third order spectrum and absent spectra if any
n=3
lambda=6000*10^-8
eplusd=1/200
theta=asind(n*lambda/eplusd)
disp("angle of refraction is theta="+string(theta)+"degree")
d=0.0025
e=eplusd-d //width of wire in cm
m=1
n=eplusd*m/e
disp("order of absent spectrum is n="+string(n)+"unitless")
disp("here,m=1 is considered because the higher values of m result the order of absent spectrum more than the given order 3")
