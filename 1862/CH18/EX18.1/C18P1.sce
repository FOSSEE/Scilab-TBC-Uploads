clear
clc
//to find amplitude,frequency,speed and wave length of the wave motion
//to find equation of wave 

// GIVEN:
//distance moved up and down
x = 1.30//in cm
//frequency
f = 125//in per second
//wavelength
lambda = 15.6//in cm

// SOLUTION
//using equations of sinusoidal wave motion
//amplitude of wave motion
ym = x/2//in cm
//wave speed
v = (lambda*10^-2)*f//in m/s //taking lambda in meters
//wave number
k = (2*%pi)/(lambda*10^-2)//in rad/m //taking lambda in meters
//angular frequency
omega = v*k//in rad/s
omega = nearfloat("succ",786)

printf ("\n\n Amplitude of wave motion ym = \n\n %.2f cm",ym)
printf ("\n\n Wave speed v = \n\n %.1f m/s",v)
printf ("\n\n Wave number k = \n\n %.1f rad/m",k)
printf ("\n\n Angular frequency omega = \n\n %3i rad/s",omega)
printf ("\n\n Equation of wave is \n\n y(x,t) = (%.2f cm)*sin[(%.1f rad/m)x - (%3i rad/s)t] ",ym,k,omega)
