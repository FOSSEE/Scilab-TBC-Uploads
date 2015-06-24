// Exa 4.10
clc;
clear;
close;
// given : 
d=30 //separation distance in meter
f=10 //frequency in mega hertz
f=10*10^6 //frequency in hertz
c=3*10^8 //speed of light in m/s
lambda=c/f //wavelength in meter
Gt=1.65 //transmitting gain in dB
Gr=1.65 //receiving gain in dB
// basic transmission loss :
// formula : Lb=10*log(((4*(%pi)*d)^2/(lambda)^2))
Lb=10*log10((4*(%pi)*d)^2/(lambda)^2) // basic transmmision loss in dB
disp(Lb,"basic transmmision loss in dB:")
// actual transmission loss :
La=Lb-Gt-Gr // actual transmisson loss in dB
disp(La,"actual transmisson loss in dB:")
