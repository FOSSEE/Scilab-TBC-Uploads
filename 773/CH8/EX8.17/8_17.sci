//coefficient//
s=%s;
t = %t;
F=syslin('c',(25)/(s^2+7*s)); //Creates transfer function in forward path
B=syslin('c',(1+0*s)/(1+0*s)); //Creates transfer function in backward path
k=20/25;   //k=gain factor
CL=k*(F/.B) //Calculates closed-loop transfer function
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
Td=(1+0.7*zeta)/Wn      //Td=delay time
a=atan(sqrt(1-zeta^2)/zeta)
Tr=(%pi-a)/Wd           //Tr=rise time
Ts=4/(zeta*Wn)          //Ts=settling time
//y(t)=expression for output
y=(20/25)*(1-(exp(-1*zeta*Wn*t)/sqrt(1-zeta^2))*sin(Wd*t+atan(zeta/sqrt(1-zeta^2))));
disp(y,"Y(t)")