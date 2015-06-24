clc
clear

//INPUT
t=273;//temperture of the oxygen molecule in K
m=32;//molecular mass of the gas in gm
r=8.32*10^7;//molar gas constant in ergs per mole
v2=33200;//velocity of the gas in cm/sec

//CALCULATIONS
v1=((3*r*t)/m)^(1/2);//rms velocity of the molecule in cm/s
T=((v2*v2*m)/(3*r));//temperature of the molecule with sound has velocity in K

//OUTPUT
mprintf('the rms velocity of the molecule is %3.2fcm/s \n the temperature of the molecule is %3.0fK',v1,T)
