//Caption:unit_step_and_impulse_response
//example 11_12
//page 482
s=%s;
syms t;
G=(4*s+1)/(4*s^2)
H=1;
CL=G/.H
disp(CL,"C(s)/R(s)=")
y=ilaplace(CL,s,t);
disp(y,"unit impulse response,c(t)=");
//for unit step response R(s)=1/s;
C=CL*(1/s)
c=ilaplace(C,s,t)
disp(c,"expression_for_unit_step_response_is=")