//Chapter 26
clc
//Example2
//given
Lp=120 // length of space ship in meters
c=3*10^8 //velocity of light in m/sec
v=0.99*c
gamma=1/sqrt(1-(v^2/c^2))
L=Lp/gamma
disp(L,"Length of spaceship measured by moving observer in meters is")

