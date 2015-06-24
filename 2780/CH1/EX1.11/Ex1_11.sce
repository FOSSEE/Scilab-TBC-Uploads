clc
//to calculate speed
deltat0=1440 //proper time interval measured by an observer moving with the clock (min)
deltat=1444 //time interval measured by a stationary observer (min)
c=3*10^8 //light speed (m/s)
v=c*sqrt(1-(deltat0/deltat)^2)
disp(" moving clock appears to lose 4min in 24 hours from the stationary observer is v="+string(v)+"m/s")
//answer is given wrong in the book =2.32*10^7 m/s
