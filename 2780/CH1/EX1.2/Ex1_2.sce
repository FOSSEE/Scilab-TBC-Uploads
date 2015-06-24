clc
//to calculate velocity of rocket 
//lo be the length at rest 
l=99/100 //length is 99 per cent of its length at rest is l=(99/100)lo
c=3*10^8   //light speed(m/s)
v=sqrt(c^2*(1-l^2)) //formula is v=c sqrt(1-(l/lo)^2)
disp("velocity of rocket is v="+string(v)+"m/s")
