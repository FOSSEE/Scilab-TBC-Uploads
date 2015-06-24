//Caption:time_response
//example 6.10.6
//page 174
//Kt=torque constant,J=moment of inertia,f=coeff. of viscous friction
clc;
syms Kt J f t
s=%s;
Kt=360,J=10,f=60
b=1/(J*s^2+f*s);
G=(Kt*b)  //in series
H=1;//backward path transfer function
cl=G/.H;//closed_loop_transfer_function
d=denom(cl)/10;//taking 10 common from numerator and denominator for simplyfying closed_loop_transfer_function
f=numer(cl)/10;
CL=f/d;//closed_loop_transfer_function_after_simplifying
printf("overall transfer function= \n");
disp(CL,"C(s)/R(s)=");
//given R(s)=(50*(%pi/180))*(1/s);
R=(50*(%pi/180))*(1/s);
C=R*CL;
e=coeff(d)
//Wn^2=e(1,1)
Wn=sqrt(e(1,1))//natural frequency
//2*zeta*Wn=c(1,2)
zeta=e(1,2)/(2*Wn)//damping ratio
//c(t):time_response_expression
c=(5*%pi/18)*(1-(exp(-zeta*Wn*t)*sin(Wn*sqrt(1-zeta^2)*t+atan(sqrt(1-zeta^2)/zeta)))/sqrt(1-zeta^2));
c=float(c)
disp(c,"c(t)=")