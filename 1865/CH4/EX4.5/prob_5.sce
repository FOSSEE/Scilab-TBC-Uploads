
//Problem 5
//Calculate the (1) the line frequency, (2) the bandwidth, (3) the coherence length
clear
clc
w=6058//wavelength (in A)
dw=0.00550//Doppler width (in A)
c=3*(10)^8//speed of light
f=c/(w*(10)^(-10))//the line frequency (in Hz)
df=(dw*f)/w//bandwidth (in Hz)
l=c/df//coherence length (in m)
printf('line frequency = %.f Hz \n',f)
printf('bandwidth = %.f Hz\n',df)
printf(' coherence length = %.f m' , l)