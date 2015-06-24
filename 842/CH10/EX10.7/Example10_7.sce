//clear//
//Example 10.7:Z transform of x[n] = b^n.u[n]+b^-n.u[-n-1]
syms n z;
b = 0.5;
x1=(b)^(n)
x2=(b)^(-n)
X1=symsum(x1*(z^(-n)),n,0,%inf)
X2=symsum(x2*(z^(n)),n,1,%inf)
X = X1+X2;
disp(X,"ans=")
//Result
//+1.0*(2^(-%inf-1)*z^(-%inf-1)-1)/(1/(2*z)-1)   
//Equivalent to -1/(0.5*z^-1 - 1)
//Region of Convergence |z|>0.5
