// Example 4.7, page no-153
clear
clc

theta=0.5       //azimuth beam width=Elevation beam width
f=6*10^9       // operating frequency 6 Ghz
c=3*10^8      //speed of light in cm/s
theta_r=theta*%pi/180
theta_r=ceil(theta_r*10^5)/10^5
A=4*%pi/(theta_r^2)
A=ceil(A*100)/100
A_dB=10*log10(A)
lambda=c/f
Ag=(A*lambda^2)/(4*%pi)

printf("\nGain in dB = %.2f dB \nAntenna gain expressed in terms of\nantenna aperture(A) is given by G = %.2f m^2",A_dB,Ag)
