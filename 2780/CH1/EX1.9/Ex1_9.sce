clc
//to calculate distance travelled by the beam 
deltat0=2.5*10^-8 //proper half life of pi mesons in (s)
c=3*10^8 //light speed (m/s)
v=0.8*c //mesons velocity (m/s)
deltat=deltat0/sqrt(1-(v/c)^2) //half life (s)
//No=initial flux ,N=flux after time t
//N=N0 e^(-t/T)
//N=N0/e^2 (given)=No e(-t/T)
//t=2 deltat
d=2*deltat*v //d=vt
disp("distance travelled by the beam is d="+string(d)+"m") 
//answer is given in the textbook=19.96 m
