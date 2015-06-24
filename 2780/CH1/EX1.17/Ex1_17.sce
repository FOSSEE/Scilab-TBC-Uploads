clc
// to calculate velocity of the particle
c=3*10^8 //light speed (m/s)
v=0.4*c //velocity of frame s' relative to s along axis x
ux=0.8*c*(1/2) //component of velocity u(=0.8 c) of the particle along x axis ux=0.8 c cos60
uy=0.8*c*sin (%pi/3) //component of the velocity u of the particle along y axis 
ux1=(ux-v)/(1-ux*v/c^2)
uy1=uy*sqrt(1-(v/c)^2)/(1-(ux*v/c^2))
disp("resultant velocity as observed by a person in frame s1 is u1=ux1 i+uy1 j")
disp("where")
disp("ux1="+string(ux1)+"m/s")
disp("uy1="+string(uy1)+"m/s")
//answer is given in terms of c in the book i.e. uy1=0.756c m/s
