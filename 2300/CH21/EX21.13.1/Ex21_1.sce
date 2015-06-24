//scilab 5.4.1
//Windows 7 operating system
//chapter 21 Communication Systems
clc
clear
Npe=6*10^10//Npe=peak electron concentration for the E layer in m^-3
Npf=10^12//Npf=peak electron concentration for the F layer in m^-3
fCE=9*sqrt(Npe)//fCE=critical frequency for the E layer
format("v",5)
disp("MHz",fCE/10^6,"Critical frequency for the E layer is =")
fCF=9*sqrt(Npf)//fCF=critical frequency for the F layer
format("v",5)
disp("MHz",fCF/10^6,"Critical frequency for the F layer is =")
R=6400//R=radius of the earth in km
He=110//He=height of the E layer above the earth surface in km
ime=asind(R/(R+He))//ime=angle corresponding to maximum frequency fmE for E layer in degrees
format("v",3)
fmE=fCE*secd(ime)//fmE=maximum frequency reflected from the E layer
disp("MHz",fmE/10^6,"The maximum frequency reflected from the E layer is =")
Hf=250//Hf=height of the F layer above the earth surface in km
imf=asind(R/(R+Hf))//imf=angle corresponding to maximum frequency fmF for F layer in degrees
format("v",3)
fmF=fCF*secd(imf)//fmF=maximum frequency reflected from the F layer
disp("MHz",fmF/10^6,"The maximum frequency reflected from the F layer is =")

