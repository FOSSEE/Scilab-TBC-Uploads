syms s t
A=[0 -1; 2 -3]
phi=inv(s*eye(2,2) - A)
disp(phi,"phi(s) = ")
x=ilaplace(phi,s,t)        //state transition matrix
