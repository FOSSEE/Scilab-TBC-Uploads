clc
//to calculate velocity
c=3*10^8 //light speed (m/s)
//K(kinetic energy)=(m-mo(rest mass))c^2
//it can also be written as mc^2=K+m0c^2
//given that K=2m0c^2(rest mass energy)
//m=3m0
m=3 //relativistic mass
//formula is v=c sqrt(1-(m0/m)^2)
v=c*sqrt(1-(1/m)^2)
disp("velocity of a body is v="+string(v)+"m/s")
