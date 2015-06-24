//coefficient//
s=%s;
F=syslin('c',(81)/(s^2+6*s)); //Creates transfer function in forward path
B=syslin('c',(1+0*s)/(1+0*s)); //Creates transfer function in backward path
CL=F/.B //Calculates closed-loop transfer function
// compare CL with Wn^2/(s^2+2*zeta*Wn+Wn^2)
y=denom(CL) //extracting the denominator of CL
z=coeff(y)  //extracting the coefficients of the denominator polynomial
//Wn^2=z(1,1) ,comparing the coefficients
Wn=sqrt(z(1,1))            // Wn=natural frequency
//2*zeta*Wn=z(1,2)
zeta=z(1,2)/(2*Wn)             // zeta=damping factor
Wd=Wn*sqrt(1-zeta^2)
Tp=%pi/Wd     //Tp=peak time
Mp=100*exp((-%pi*zeta)/sqrt(1-zeta^2))  //peak overshoot
