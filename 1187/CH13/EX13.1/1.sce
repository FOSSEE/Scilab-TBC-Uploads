clc

// Maximum hydraulic efficiency occurs for minimum pressure loss, that is, when

// dp1/dQ=2.38Q-1.43=0

Q_opt=1.43/2.38;

p1_min=1.19*Q_opt^2-1.43*Q_opt+0.47; // MPa

rho=1000; // kg/m^3
g=9.81; // m/s^2
w=69.1; // rad/s
P=200*10^3; // W
Ohm_P=0.565; // rad
d=0.5; // m
h=0.06; // m

p1=p1_min*10^6/(rho*g); // mH2O, coversion of units

H=(w*P^(1/2)/(rho^(1/2)*Ohm_P))^(4/5)/g;

Hydraulic_efficiency=(H-p1)/H;
disp("Hydraulic Efficiency =")
disp(Hydraulic_efficiency)

Overall_efficiency=P/(Q_opt*rho*g*H);
disp("Overall Efficiency =")
disp(Overall_efficiency)

H_Euler=H-p1;

u1=w*0.25;
v_w1=g*H_Euler/u1;
A=%pi*d*h*0.95; 
v_r=Q_opt/A;

alpha1=atand(v_r/v_w1);
disp("Outlet angles of the guide vanes =")
disp(alpha1)
disp("degrees")

beta1=atand(v_r/(v_w1-u1));
disp("Rotor blade angle at inlet =")
disp(beta1)
disp("degrees")
u2=w*0.325/2;
beta2=atand(v_r/u2);
disp("Rotor blade angle at outlet =")
disp(beta2)
disp("degrees")
