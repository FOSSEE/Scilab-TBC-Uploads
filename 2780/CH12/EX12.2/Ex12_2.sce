clc
//to calculate electric field at a point from centre of the shell
q=0.2*10^-6 //charge
r=3 //radius
epsilon0=8.85*10^-12
E=q/(4*%pi*epsilon0*r^2)
disp("electric field at a point from centre of the shell is E="+string(E)+"N/coulomb")
//to calculate electric field at a point just outside the shell
R=0.25 //radius
E=q/(4*%pi*epsilon0*R^2)
disp("electric field at a point just outside the shell is E="+string(E)+"N/coulomb")
//to calculate the electric field at a point inside the shell
//when the point is situated inside the spherical shell,the electric field is zero
