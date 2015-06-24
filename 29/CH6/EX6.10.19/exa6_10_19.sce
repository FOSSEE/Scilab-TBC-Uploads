//caption:determine_steady_state_error
//example 6.10.19
//page 189
s=%s;
syms K bta alpha G
num=sym('K*s+bta');
den=sym('s^2+alpha*s+bta');
CL=num/den;
disp(CL,"C(s)/R(s)=");//----(1)
H=1;
//also
cl=G/(1+G*H);
disp(cl,"also,C(s)/R(s)=");//------(2)
//from eq. (1) and (2), we get
G=num/(s^2+s*(alpha-K));
disp(G,"G(s)=");
B=1/(1+G);
B=simple(B);
disp(B,"E(s)/R(s)=");
R=1/s^2;
E=B*R;
E=simple(E);
Ess=limit(s*E,s,0);
disp(Ess,"steady state error=");