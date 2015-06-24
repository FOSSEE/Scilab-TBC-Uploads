clc
//to calculate uncertainity in the momentum of the parcticle 
h=6.626*10^-34 //planck's constant J-s
delx=0.01*10^-2 //uncertainity in position in m
delp=h/(2*%pi*delx)
disp("uncertainity in the momentum of the parcticle is delp="+string(delp)+"kg-m/s^2")
//to calculate uncertainity in the velocity of an electron
m=9*10^-31 //mass of an electron in kg
delx=5*10^-10 
delv=h/(2*%pi*m*delx)
disp("uncertainity in the velocity of an electron is delv="+string(delv)+"m/s")
//to calculate uncertainity in the velocity of alpha particle 
m=4*1.67*10^-27 //mass of alpha particle in kg
delx=5*10^-10
delv=h/(2*%pi*m*delx)
disp("uncertainity in the velocity of an electron is delv="+string(delv)+"m/s")
