//Caption:time_response_and_peak_overshoot
//example 12.8
//page 521
s=%s;
syms t;
num=sym('8*(s+1)');
den=sym('(s^2+2*s+2)');
CL=num/den;
disp(CL,"C(s)/R(s)=");
//for unit step response R(s)=1/s; 
d=CL*(1/s);
disp(d,"C(s)=");
c=ilaplace(d,s,t);
disp(c,"c(t)=");
//for peak time we get tp=%pi/2
t=%pi/2
a=s*d;
a=simple(a)
Cmax=4*(1+1.414*exp(-t)*sin(t-(%pi/4)))
Css=limit(a,s,0);
disp(Css,"Css=");
Mp=((Cmax-Css)/Css)*100
Mp=float(Mp)
disp(Mp,"peak_overshoot=")
