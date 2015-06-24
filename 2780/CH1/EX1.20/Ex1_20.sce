clc
//to calculate mass(m),speed(v) of an electron
K=1.5*10^6*1.6*10^-19 //kinetic energy(J)
m0=9.11*10^-31 //rest mass of an electron(kg)
c=3*10^8 // velocity of light in vacuum(m/s)
m=(K/c^2)+m0 //relativistic kinetic energy(k=(m-mo)c^2)
disp("mass is m="+string(m)+"kg ")
v=c*sqrt(1-m0^2/m^2)
disp("speed of an electron is v="+string(v)+"m/s")
