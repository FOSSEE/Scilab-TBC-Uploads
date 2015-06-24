//caption:determine_steady_state_error_and_error_coefficient
//example 6.10.21
//page 191
s=%s;
syms t;
r=2+3*t+2*t^3;
//since for 'r' only upto 2nd order derivative is non zero, so only coeff. C0 C1 C2 exist
G=sym('1/(s*(s+2))');
A=1/(1+G);
A=simple(A);
disp(A,"E(s)/R(s)=");
C0=limit(A,s,0);
B=sym('((1)/(s^2+2*s+1))');//on simplyfying A=1-B
d=diff(-B,s);
C1=limit(d,s,0);
d1=diff(-B,s,2);
C2=limit(d1,s,0);
r1=diff(r,t);
r2=diff(r,t,2);
d2=diff(-B,s,3)
C3=limit(d2,s,0)
e=(C0*r)+(C1*r1)+(C2*r2)/2;
disp(float(e),"steady_state_error,e=");
disp(C0,"C0=");
disp(float(C1),"C1=");
disp(float(C2),"C2=");
disp(float(C3),"C3=")
