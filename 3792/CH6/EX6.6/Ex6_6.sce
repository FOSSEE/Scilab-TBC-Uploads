// SAMPLE PROBLEM 6/6
clc;funcprot(0);
// Given data
alpha_0=3;// rad/s^2
m=70;// kg
k=0.250;// The radius of gyration in m
mu_s=0.25;// The coefficient of static friction
g=9.81;// The acceleration due to gravity in m/s^2
DCbar=0.30;// m
r_A=0.250;// m
r_Bi=0.150;// m
r_Bo=0.450;// m

// Calculation
a_t=r_A*alpha_0;// m/s^2
alpha=a_t/DCbar;// rad/s^2
abar=r_Bo*alpha;// m/s^2
function[X]=force(y)
    // SigmaF_x=m*abar_x
    X(1)=(y(1)-y(2))-(m*-abar);
    N=(m*g);// N
    // SigmaM_G=Ibar*alpha
    X(2)=((r_Bo*y(1))-(r_Bi*y(2)))-(m*k^2*alpha);
endfunction
y=[10 100];
z=fsolve(y,force);
F=z(1);// N
T=z(2);// N
printf("\nThe tension in the cable,T=%3.1f N \nThe friction force exerted by the horizontal surface on the spool,F=%2.1f N",T,F);
N=(m*g);// N
F_max=mu_s*N;// N
// If the coefficient of static friction had been 0.1
mu_s=0.1;// The coefficient of static friction
F=mu_s*(m*g);// N
// SigmaM_C=Ibar*alpha + m*abar*r
T=((m*(r_A^2)*alpha)+(m*abar*r_Bo))/DCbar;// N
printf("\nThe tension in the cable,T=%3.1f N",T);
