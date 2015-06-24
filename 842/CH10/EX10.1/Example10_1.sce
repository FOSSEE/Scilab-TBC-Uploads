//clear//
// Example10.1:Ztransform of x[n]  = (a)^n.u[n]
syms n z;
a = 0.5;
x =(a)^n
X = symsum(x*(z^(-n)),n,0,%inf)
disp(X,"ans=")
//Result
//1.0*(2^(-%inf-1)*z^(-%inf-1)-1)/(1/(2*z)-1) 
//Equivalent to -1/(0.5*(z^-1)-1)
