clc
//to calculate speed of the clock
//clock should record l=59 minutes for each hour recorded by clocks stationary with respect to the observer
l=59 
lo=60
c=3*10^8 //light speed (m/s)
v=sqrt(c^2*(1-l^2/lo^2))
disp("speed of the clock is ="+string(v)+"m/s")

