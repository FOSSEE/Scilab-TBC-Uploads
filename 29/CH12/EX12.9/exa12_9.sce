//Caption:determine_peak_overshoot
//example 12.9
//page 523
s=%s;
syms t K;
CL=sym('(s+1)/(s^2+2*s+5)');
CL=K*CL;
disp(CL,"C(s)/R(s)=")
//for unit step response R(s)=1/s; 
d=CL*(1/s)
Css=limit(s*d,s,0)
disp(Css,"Css=");
//since Css=0.8 (given)
K=0.8*5;
CL=eval(CL);
disp(CL,"C(s)/R(s)=");
//for unit step response R(s)=1/s; 
d=CL*(1/s)
disp(d,"C(s)=");
c=ilaplace(d,s,t);
disp(c,"c(t)=");
//for peak time we get tp=0.785
t=0.785
a=s*d;
a=simple(a)
Cmax=(4/5)*(1-exp(-t)*cos(2*%pi/4)+exp(-t)*2*sin(2*%pi/4))
Css=limit(a,s,0)
disp(Css,"Css=");
Mp=((Cmax-Css)/Css)*100
Mp=float(Mp)
disp(Mp,"peak_overshoot=")

