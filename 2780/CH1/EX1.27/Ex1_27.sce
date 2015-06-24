clc
//to calculate speed of 0.1MeV electron
E=0.512*10^6 //rest mass energy E=m0*c^2
c=3*10^8 //velocity of light (m/s)
K=0.1*10^6 //kinetic energy (MeV)
v=c*sqrt(1-(E/(K+E))^2) 
disp("speed of electron is v="+string(v)+"m/s" )
//to calculate mass and speed of 2MeV electron
E=2*10^6*1.6*10^-19 //in (J)
m=E/c^2 
disp("mass is m="+string(m)+"kg")
m0=9.11*10^-31 //electron mass (kg)
v=c*sqrt(1-m0^2/m^2)
disp("speed is v="+string(v)+"m/s")


