clear;
clc;
N = 2640;//rigidity modulus in tons/in^2
d = 3/8;//diameter of the rod in inches
P = 1/2;//axial pull in tons
del_d = 0.000078;//change in diameter in inches
A = 0.25*%pi*d^2;//section area in in^2
p = P/A ;//stress tons/in^2
LS = del_d/d;//lateral strain
m = p/(LS*2*N) - 1;
E = 2*N*(1 + 1/m);//modulus of elasticity in ton/in^2
PR = 1/m;//poisson's ratio 
printf('Poisson ratio 1/m = %.3f',PR);
printf('\n    E = %d ton/in^2',E);

//there is an error in the answer given in textbook.
