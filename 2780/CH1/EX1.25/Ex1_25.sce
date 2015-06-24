clc
//to calculate kinetic energy ,momentum of electron
m0=9.11*10^-31 //its rest mass (kg)
c=3*10^8 //light velocity in (m/s)
m=11*m0 //mass of moving electron is 11 times its rest mass
K=(m-m0)*c^2/(1.6*10^-19) // kinetic energy
disp("kinetic energy is K="+string(K)+"eV") 
v=c*sqrt(1-(m0/m)^2) //velocity(m/s)
p=m*v //momentum
disp("momentum is p="+string(p)+"kg m/s")
