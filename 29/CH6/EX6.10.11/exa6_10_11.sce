//caption:determine_characterstics_eq_and_steady_state_error
//example 6.10.11
//page 181
//J=moment of inertia,f=C,K=controller gain,Wn=natural frequency, zeta=damping ratio
syms f J K Kt
s=%s;
A=sym((1/(J*s^2+f*s)));
J=250;
K=8*10^4;
B=eval(A)
a=(K*B);
H1=s*Kt;
b=(1+a*H1);
b=simple(b);
CL1=a/b;
CL1=simple(CL1);
H=1;
c=1+CL1*H;
c=simple(c);
CL=CL1/c
CL=simple(CL);
disp(CL,"C(s)/R(s)=");
Wn=sqrt(80000/250)//natural frequency
//2*zeta*Wn=(80000*Kt+f)/250
zeta=1;//for critical damping
d=2*zeta*Wn;
v=[320 d 1];
CH=poly(v,'s','coeff');
r=float(5*2*%pi/60);
//steady state error for unit ramp input is:Ess= (2*zeta/Wn)
Ess=(2*zeta/Wn)*r;
disp(Ess,"steady_state_error=");
