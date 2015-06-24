clc

Q=0.04; // m^3/s
d=0.15; // m
h=28; // m
f=0.006;
l=38; // m
g=9.81;
fre=50; // Hz
n_manometer = 0.75; 
theta=30; // degrees

v=Q/(%pi/4*d^2);
h1=(3+4*f*l/d)*v^2/2/g; // Total head loss through pipes and valves

h_m=h+h1; // Manometric head

// w=2*%pi*50/n; where n = number of pairs of poles.
// Ohm_s=w*Q^(1/2)/(g*H)^(3/4) = 0.876/n rad

// If n = 2, Ohm_s = 0.438 rad, which suggests pump 1 or 2, and ω = 157 rad/s. Outlet flow area = %pi*D*D/10

// v_r2=0.04/(%pi*D^2/10)
// u2= ω*D/2 = 78.54 D

// v_w2= g*h_m/(n_manometer*u2) = 5.06/D; // m^2/s

// tan(theta) = v_r2/(u2-v_w2)

// Solving above equation, we get
// 78.54*D^3 - 5.06*D - 0.2205 = 0;

// Solving above cubic equation we get

D = 0.272; // m
disp("D = ")
disp(D)
disp("m")
disp("That is near enough. So we choose pump 1")
