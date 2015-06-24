clc
//to calculate length of the bar measured by the ststionary observer
lo =1  //length in metre
v=0.75*3*10^8 //speed (m/s)
c=3*10^8 //light speed(m/s)
l=lo*sqrt(1-(v^2/c^2))
disp("length of bar in is l="+string(l)+"m")
