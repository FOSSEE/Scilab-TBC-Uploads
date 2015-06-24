//Caption:time_response_for_unit_step_function
//example 11_9
//page 476
s=%s;
syms t;
CL=(4*s+4)/(s^2+2*s+5)
disp(CL,"C(s)/R(s)=")
y=ilaplace(CL,s,t);
disp(y,"c(t)=");
b=denom(CL)
c=coeff(b)
//Wn^2=c(1,1)
Wn=sqrt(c(1,1))//natural frequency
//2*zeta*Wn=c(1,2)
zeta=c(1,2)/(2*Wn)//damping ratio
Wd=Wn*sqrt(1-zeta^2)//damped frequency
Mp=(exp(-(zeta*%pi)/sqrt(1-zeta^2)))*100//max. overshoot
Tp=%pi/Wd//peak time
disp(Tp,"peak time=");
disp(Mp,"max. peak overshoot=");