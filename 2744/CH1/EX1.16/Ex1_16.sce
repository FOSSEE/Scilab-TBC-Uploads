clear;
clc;
d = 9/8;//diameter of the steel bar in inches
P = 6;//tensile load in tons
del_l = 0.0036 ;//extension of length inches
l = 8;//gauge length in inches
del_d = 0.00015;//change in diameter in inches
A = 0.25*%pi*d^2;//section area in in^2
p = P/A;//stress in tons/in^2
e = del_l/l;//strain
E = p/e;//modulus of elasticity in tons/in^2
LS = del_d/d;//lateral strain 
PR = LS/e;//poisson's ratio 
N = E/(2*(1+PR));//rigidity modulus in tons/in^2
K = E/(3*(1-2*PR));//bulk modulus in tons/in^2
printf('Poisson ratio 1/m = %.4f',PR);
printf('\n  E = %d tons/in^2',E);
printf('\n  N = %d tons/in^2',N);
printf('\n  K = %d tons/in^2',K);

//there is an error in the answer given in textbook.
