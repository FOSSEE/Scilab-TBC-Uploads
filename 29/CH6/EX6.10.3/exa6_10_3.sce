//Caption:time_response_for_unit_step_function
//example 6.10.3
//page 172
//G(s)=2/(s*(s+3)
clc;
s=%s;
syms t;
G=2/(s*(s+3))//G(s)
b=1;
a=G/.(b);
disp(a,"C(s)/R(s)=");
disp('for unit step response R(s)=1/s'); 
d=a*(1/s);
disp(d,"C(s)=");
e=ilaplace(d,s,t);
disp(e,"c(t)=");