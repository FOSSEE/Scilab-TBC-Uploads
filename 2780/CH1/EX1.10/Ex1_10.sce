clc
//to calculate distance travelled by the particle 
deltat0=2*10^-8 //proper half life to of the particle in (s) 
c=3*10^8 //light speed (m/s)
v=0.96*c //speed of the particle (m/s)
deltat=(deltat0)/(sqrt(1-(v/c)^2)) //half life in the laboratory frame t in (s) 
//t=deltat (flux of the beam falls to (1/2) times initial flux)
d=v*deltat //d=vt
disp("distance travelled by the particle in this time is d="+string(d)+"m")
//answer is given wrong in the textbook =20.45 m
