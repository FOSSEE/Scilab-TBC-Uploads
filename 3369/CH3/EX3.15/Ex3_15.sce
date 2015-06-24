//Chapter 3, Exmaple 15, page 109
//Mobility of electrons
clc
clear
Ie = 3
d = 0.8
A = 8*10**-4
Vne = 20*10**17 //V*ne
e = 1.6*10**-19
ke = (Ie*d)/(A*Vne*e)
printf("\Mobility of electrons = %d m^2/s*V ",ke)

//Answer may vary from the text
