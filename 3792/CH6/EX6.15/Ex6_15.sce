// SAMPLE PROBLEM 6/15
clc;funcprot(0);
// Given data
m_E=30;// kg
m_D=40;// kg
v_1=1.2;// m/s
t_1=0;// s
t_2=5;// s
F=380;// N
d=375/1000;// m
k_o=250/1000;// m
g=9.81;// m/s^2

// Calculation
// [H_O1+(integral(t_2 to t_2))SigmaM_Odt=H_O2]
// Integrating we get
M=((((F*0.750)*t_2)-(((m_E+m_D)*g*d)*t_2))-(((F*0.750)*t_1)-(((m_E+m_D)*g*d)*t_1)));// N.m.s
Ibar=(m_E)*k_o^2;// kg-m^2
omega_1=v_1/d;//rad/sec
H_O1=-((m_E+m_D)*v_1*d)-(Ibar*(v_1/d));// N.m.s
// H_O2=-(m_E+m_D*v_2*d)-(Ibar*(v_2/d));
// H_O2=11.72*omega_2;
// Substituting into the momentum equation gives
omega_2=(H_O1+M)/11.72;// N.m.s
// [G_1+(integral(t_2 to t_2))SigmaFdt=G_2]
m=m_E+m_D;// kg
G_1=m*-(v_1);// (kg.m/s)
G_2=m*(d*omega_2);// (kg.m/s)
// Integrating
// SigmaF=[T*(t_2)+(F*t_2)-(m*g*t_2)]-[T*(t_1)+(F*t_1)-(m*g*t_1)];
T=((G_2-G_1)-(((F*t_2)-(m*g*t_2))-((F*t_1)-(m*g*t_1))))/(t_2-t_1);// N
printf("\nThe angular velocity,omega_2=%1.2f rad/s counter clockwise \nThe tension in the cable,T=%3.0f N",omega_2,T);
