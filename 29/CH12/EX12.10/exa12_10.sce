//Caption:determine_unit_step_response
//example 12.10
//page 524
s=%s;
syms t;
CL=sym('1/((s+1)*(s^2+1))')
disp(CL,"C(s)/R(s)=");
//for unit step response R(s)=1/s; 
d=CL*(1/s);
a=s*d;
c=ilaplace(d,s,t);
disp(c,"c(t)=");