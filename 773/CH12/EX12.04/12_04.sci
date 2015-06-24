//denominator polynomial//
//Defines s as polynomial variable
s=poly(0,'s');
//Creates transfer function in forward path
F=syslin('c',[81/((s+18)*s)]); 
//Creates transfer function in backward path
B=syslin('c',(1+0*s)/(1+0*s));
//Calculates closed-loop transfer function
CL=F/.B 
// compare CL with Wn^2/(s^2+2*zeta*Wn+Wn^2)
y=denom(CL)//extracting the denominator of CL
//Extracting the coefficients of the denominator polynomial
z=coeff(y)  
//Wn^2=z(1,1) ,comparing the coefficients
Wn=sqrt(z(1,1)) 
//2*zeta*Wn=z(1,2)
zeta=z(1,2)/(2*Wn)  
// zeta=damping factor
//NOTE= here sqrt(1-2zeta^2) becomes complex so the other solution is  Wr=0 & Mr=1
Mr=1 
Wr=0 
Wc=Wn*((1-2*zeta^2)+sqrt(4*zeta^4-4*zeta^2+2))
BW=Wc //BANDWIDTH
