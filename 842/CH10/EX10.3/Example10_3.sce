//clear//
//Example 10.3:Z transform of x[n] = 7.(1/3)^n.u[n]-6.(1/2)^n.u[n]
syms n z;
x1=(0.33)^(n)
X1=symsum(7*x1*(z^(-n)),n,0,%inf)
x2=(0.5)^(n)
X2=symsum(6*x2*(z^(-n)),n,0,%inf)
X = X1-X2
disp(X,"ans=")
//Result
// -6.0*(2^(-%inf-1)*z^(-%inf-1)-1)/(1/(2*z)-1) 
//Equivalent to -6*-1/(0.5*z^-1 -1)
//The Region of Convergence is |z|>1/2
