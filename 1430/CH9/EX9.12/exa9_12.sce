// Example 9.12
// Step Response with variable damping
V_s1=0; // Voltage source value for t<0
V_s2=30;//Voltage source value for t>0 
L=0.1;
C=1/640;
omega_0=sqrt(1/(L*C));
v_C_aft=0; // v_C(0^+)=0;
v_C_aft_d=0; // v_C'(0^+)=0;
V_ss=30;
// for Overdamped Response
// Let
R=34;
alpha=R/(2*L);
p1=-alpha+sqrt(alpha^2-omega_0^2)
p2=-alpha-sqrt(alpha^2-omega_0^2)
P=[1,1;p1,p2];// coefficients of A's matrix
V=[v_C_aft-V_ss;v_C_aft_d];// initial conditions and excitations
A=P\V;
A_1=A(1);
A_2=A(2);
t=0:0.001:0.5
v_C=V_ss+A_1*exp(p1*t)+A_2*exp(p2*t);// t>0
// for Underdamped Response
// Let
R1=5;
alpha1=R1/(2*L);
p3=-alpha1+sqrt(alpha1^2-omega_0^2);
p4=-alpha1-sqrt(alpha1^2-omega_0^2);
omega_d=sqrt(omega_0^2-alpha1^2);
P1=[1,1;p3,p4];
V1=[v_C_aft-V_ss;v_C_aft_d];
A1=P1\V1
A_3=A1(1);
v_C1=V_ss+2*abs(A_3)*exp(-alpha1*t).*cos(omega_d*t+atan(imag(A_3),real(A_3)));
// for Critically Damped Response
R2=sqrt(6400/25);
alpha2=R2/(2*L);
A_4=v_C_aft-V_ss;
A_5=v_C_aft_d+alpha2*A_4;
v_C2=V_ss+A_4*exp(-alpha2*t)+A_5*t.*exp(-alpha2*t);
plot(t,v_C,t,v_C1,t,v_C2)
xlabel('t')
ylabel('v_c(t)')
title('Step Response with variable damping')
h1=legend(['Overdamped';'Underdamped';'Critically damped'])
