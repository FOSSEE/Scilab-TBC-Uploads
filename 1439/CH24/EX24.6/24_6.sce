clc
//initialisation of variables
t= 1600 //years
M= 226 //gms
k= 3.7*10^10 //disintegrations per second
//CALCULATIONS
wl= 0.693/(t*365*24*60*60)
r= wl*6.02*10^23/M
//RESULTS
printf ('wavelength = %.1e disintegrations per second',r)
