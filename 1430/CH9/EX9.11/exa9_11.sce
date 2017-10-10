//Example 9.11  
// Underdamped Zero-Input Response
// form figure 9.25
L=0.1;
R=5;
C=1/640;
alpha=R/(2*L);
omega_0=sqrt(1/(L*C));
//Characteristic  Values
p1=-alpha+sqrt(alpha^2-omega_0^2);
omega_d=sqrt(omega_0^2-alpha^2);
p2=p1'; // Complex conjugate
V_s1=30; // t<0
V_s2=0;//t>0
// using initial conditions we find
i_L_aft=0;// i(0^+)=0
i_L_aft_d=-30/L; // i'(0^+)=0
I_ss= 0; // when capacitor becomes fully charge before t<0
//Using complex matrix equation
P=[1,1;p1,p2];
I=[i_L_aft-I_ss;i_L_aft_d]
A=P\I
A_1=A(1);
A_1_m=abs(A_1);
phase_A_1=atan(imag(A_1),real(A_1))*(180/%pi);
t=0:0.001:0.5
i_L=2*A_1_m*exp(-alpha*t).*cos(omega_d*t+phase_A_1);
plot(t,i_L)
xlabel('t')
ylabel('i_L(t)')
title('Current Waveform')

