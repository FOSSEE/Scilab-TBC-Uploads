//clear//
// Example10.33:Differentiation Property of Unilateral Ztransform
// x[n]  = (a)^(n+1).u[n+1]
syms n z;
a = 0.5;
x =(a)^(n+1)
X = symsum(x*(z^(-n)),n,-1,%inf)
disp(X,"ans=")
//Result
//X(z)= 0.5*(2^(-%inf-1)*z^(-%inf-1)-2*z)/(1/(2*z)-1) 
//Equivalent to z/(1-0.5*z^-1) 
