//Caption:determine_unit_step_and_unit_impulse_response
//example 12.11
//page 524
s=%s;
syms t;
G=sym('8/(s+1)');
H=sym('(1/2*s)');
CL=G/(1+G*H);
disp(CL,"C(s)/R(s)=");
//for unit step response R(s)=1/s; 
d=CL*(1/s);
disp(d,"C(s)=");
c=ilaplace(d,s,t);
disp(c,"unit step response,c(t)=");
//for unit impulse response R(s)=1; 
e=CL*(1);
disp(e,"C(s)=");
ct=ilaplace(e,s,t);
disp(ct,"unit impulse response,c(t)=");
