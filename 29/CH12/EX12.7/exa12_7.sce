//Caption:determine_peak_time_and_peak_overshoot
//example 12.7
//page 520
s=%s;
syms t;
G=sym('(s+2)/(s*(s+1))')//G(s)
H=1;
CL=G/(1+G*H);
disp(CL,"C(s)/R(s)=");
//for unit step response R(s)=1/s; 
d=CL*(1/s);
a=s*d;
disp(d,"C(s)=");
c=ilaplace(d,s,t);
disp(c,"c(t)=");
//for peak time we get tp=3*%pi/4
tp=3*%pi/4
Cmax=1-(exp(-tp)*cos(tp));
Css=limit(a,s,0);
disp(Css,"Css=");
Mp=((Cmax-Css)/Css)*100
Mp=float(Mp)
disp(Mp,"peak_overshoot=")
