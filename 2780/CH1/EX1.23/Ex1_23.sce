clc
//to calculate speed of the rocket
m0=50 //weight of man on the earth(kg)
m=50.5 //weight of man in rocket ship (kg)
c=3*10^8 //speed of light(m/s)
v=c*sqrt(1-m0^2/m^2)
disp("speed of the rocket is v="+string(v)+"m/s" )
//to calculate speed of electron
m0=9.11*10^-31 //mass of electron =rest mass of proton
m=1.67*10^-27
v=c*sqrt(1-m0^2/m^2)
disp("speed of an electron is v="+string(v)+"m/s")
