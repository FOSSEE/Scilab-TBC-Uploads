//Caption:time_response_for_unit_step_function
//example 11_8
//page 476
s=%s;
syms t;
G=(20)/((s+1)*(s+5))
H=1;
CL=G/.H
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
t=(2*%pi)/(Wn*sqrt(1-zeta^2))//period of oscillation
ts=4/(zeta*Wn)//settling time
N=Wd/(2*%pi)*ts//no. of oscillations completed before reaching steady state
disp(Tp,"peak time=");
disp(Mp,"max. peak overshoot=");
disp(t,"period of oscillation");
disp(N,"no. of oscillations completed before reaching steady state=");
disp(ts,"settling time=")
