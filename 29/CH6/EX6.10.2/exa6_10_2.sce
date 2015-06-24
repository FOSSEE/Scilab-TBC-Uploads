//Caption:time_response_for_unit_impulse_and_step_function
//example 6.10.2
//page 171
//G(s)=(4*s+1)/4*(s^2);H(s)=1;
clc;
s=%s;
syms t;
G=(4*s+1)/(4*(s^2))//G(s)
b=1;
a=G/.(b);
disp(a,"C(s)/R(s)=");
//for unit impulse response R(s)=1 ; so C(s)=a;
disp("for unit impulse response R(s)=1 ; so C(s)=a;")
disp(a,"C(s)=");
c=ilaplace(a,s,t);
disp(c,"c(t)=");
//for unit step response R(s)=1/s
disp('for unit step response R(s)=1/s, so'); 
d=a*(1/s);
disp(d,"C(s)=");
e=ilaplace(d,s,t);
disp(e,"c(t)=");