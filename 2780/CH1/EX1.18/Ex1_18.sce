clc
//to calculate mass, momentum,total energy,kinetic energy
c=3*10^8 //light speed (m/s)
v=c/sqrt (2) //velocity (m/s)
//let mo be the rest mass of the particle 
//relativistic mass m of the particle is m=mo/sqrt(1-(v/c)^2)
m=1/sqrt (1-v^2/c^2) //in kg
disp("mass m="+string(m)+" mo")
//momentum p of the particle is p=mv
p=m*v //in kg-m/s
disp("momentum p="+string(p)+" mo")
//total energy E of the particle
E=m*c^2 //in J
disp("energy E="+string(E)+" mo")
//kinetic energy K=E-mo c^2
K=E-c^2 //in J
disp("kinetic energy K="+string(K)+" mo")
//answer is given in terms of m0 and c in the book
