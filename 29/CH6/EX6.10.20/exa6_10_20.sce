//caption:determine_steady_state_error_and_error_coefficient
//example 6.10.20
//page 189
s=%s;
syms t a0 a1 a2;
r=a0+a1*t+(a2/2)*t^2;
//since for 'r' only upto 2nd order derivative is non zero, so only coeff. C0 C1 C2 exist
num=20;
den=sym('(s*(s+2))');
G=num/den;
disp(G,"G(s)=");
A=1/(1+G);
A=simple(A);
disp(A,"E(s)/R(s)=");
C0=limit(A,s,0);
B=sym('((20)/(s^2+2*s+20))');//on simplyfying A=1-B
d=diff(-B,s);
C1=limit(d,s,0);
d1=diff(-B,s,2);
C2=limit(d1,s,0);
r1=diff(r,t);
r2=diff(r,t,2);
e=(C0*r)+(C1*r1)+(C2*r2)/2;
disp(C0,"C0=");
disp(float(C1),"C1=");
disp(float(C2),"C2=");
disp(float(e),"steady_state_error,e=");