//caption:determine_J,f,K
//example 6.10.9
//page 178
//J=moment of inertia,f=C,K=forward path gain,Wn=natural frequency, zeta=damping ratio
syms J f K s zeta Wn
CL=1/(J*s^2+f*s+K);
printf("given:transfer function is:\n");
disp(CL,"theta(s)/T(s)=");
T=10*(1/s);
theta=T*CL;
theta_ss=limit(s*theta,s,0)//steady_state_value
printf("given:theta_ss=0.5\n so K=10/0.5");
theta_ss=0.5;
K=10/theta_ss;
disp(K,"forward path gain,K=");
Mp=0.06;//max.peak overshoot (given)--------(1)
Mp=exp((-zeta*%pi)/sqrt(1-zeta^2))//---------(2)
//from eq. (1) and (2), we get
zeta=0.66;
tp=%pi/(Wn*(sqrt(1-zeta^2)));//-------(3)
tp=1//(given)
Wn=%pi/(tp*sqrt(1-zeta^2));
//also Wn=sqrt(K/J);
J=K/Wn^2;
//also 2*zeta*Wn=f/J
f=J*2*zeta*Wn;
disp(J,"moment of inertia,J=");
disp(f,"moment of inertia,f=");