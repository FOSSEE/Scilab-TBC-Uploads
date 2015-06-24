clc
//to calculate charge
//let charge be q coulomb ,then the surface density of charge i.e. sigma=q/(4*%pi*r^2)..............eq(1)
//outward pull per unit area =sigma^2/(2*epsilon0)............eq(2)
//put eq(1) in eq(2),we get q^2/(4*%pi*r^2)^2*(2*epsilon0)..............eq(3)
//pressure due to surface tension =4*T/r............eq(4)
T=27
r=1.5*10^-2
epsilon0=8.85*10^-12
//equate eq(3) and eq(4),we get
q=sqrt(4*T*((4*%pi*r^2)^2)*2*epsilon0/r)
disp("charge is q="+string(q)+"coulomb")
//answer is given wrong in the book,square of 4*%pi*r^2 is not taken in the solution.
