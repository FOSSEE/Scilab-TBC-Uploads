clc

p_A=16*10^5; //Pa
p_B=6.4*10^5; //Pa

T_A=328; //K
T_B=298; //K

n_A=0.6; //kg-mole
m_B=3; //kg

R0=8314;
M_A=28; 
y=1.4;

V_A=n_A*R0*T_A/p_A;

m_A=n_A*M_A;
R=R0/M_A;

V_B=m_B*R*T_B/p_B;

V=V_A+V_B;
m=m_A+m_B;
T=303; //K


disp("(a) (i) Final equilibrium pressure, p")
p=m*R*T/V/10^5;
disp("p=")
disp(p)
disp("bar")

cv=R/10^3/(y-1);

disp("(ii) Amount of heat transferred, Q :")

U1=cv*(m_A*T_A + m_B*T_B);
U2=m*cv*T;

Q=U2-U1;
disp("Q=")
disp(Q)
disp("kJ")


disp("(b) If the vessel were insulated :")

disp("(i) Final temperature,")

T=cv*(m_A*T_A + m_B*T_B)/(m*cv);
t=T-273;
disp("T=")
disp(t)
disp("°C")


disp("(ii) Final pressure")

p=m*R*T/V/10^5;
disp("p=")
disp(p)
disp("bar")