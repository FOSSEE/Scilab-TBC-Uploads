//Example 9.8
// Natural Response of a Series LRC Circuit
// From figure 9.17
L=0.1;
R=14;
C=1/400;
// Since Excitation is zero by definition of natural response ,we set v_s'=0 in standard 2nd order diffrential equation
// homogeneneous differential equation will be
// i_L''+(R/L)*i_L'+(1/(L*C))*i_L=0
s=%s;
p=s^2+(R/L)*s+(1/(L*C)); // characteristic equation
//comparing this equation with standard 2nd order diffrential equation we get
alpha=R/(2*L);
omega=sqrt(1/(L*C));
r=roots(p); // roots of characteristic equation
// Let us assume values for A's
A_1= -5;
A_2= 7;
t=0:0.001:0.1;
i_l=A_1*exp(r(2)*t)+A_2*exp(r(1)*t);
plot(t,i_l) // typical plot of Overdamped Response
xlabel('t')
ylabel('i_l(t)')
title("Overdamped Response of series LRC circuit")

