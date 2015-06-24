//clear//
// Example10.18:Ztransform-Differentiation Property
// x[n]  = (a)^n.u[n]
syms n z;
a = 0.5;
x =(a)^n
X = symsum(x*(z^(-n)),n,0,%inf)
X1 = -1/((1/(2*z))-1)      //z transform of 0.5^n.u[n]
Y  = -z*diff(X,z)  //Differentiation property of z-transform
disp(X,"ans=")
disp(Y,"ans=")
//Result
//X(z) = 1.0*(2^(-%inf-1)*z^(-%inf-1)-1)/(1/(2*z)-1)
//Y(z) = -1.0*(-%inf-1)*2^(-%inf-1)*z^(-%inf-1)/(1/(2*z)-1)  
//Y1(z) = 1/(2*(1/(2*z)-1)^2*z)
//Equivalent  to  Y1(z) = 0.5*z^-1/((1-0.5*z^-1)^2)
