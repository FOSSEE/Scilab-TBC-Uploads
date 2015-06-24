clc
d=0.1; // m
v_r=2; // m/s
f=0.005;
g=9.81; // m/s^2
L_s=2; // m
L_r=10; // m
Q1=1.1*10^(-2); // m^3/s
z_t=12; // m
z_s=5; // m
L1=20; // m

Q=%pi*d^2/4*v_r;
H=12-70*Q-4300*Q^2;
k=2*g*H/v_r^2 - (4*f*(L_s+L_r)/d) - 1;
disp("The head loss across the restriction orifice =")
disp(k)
disp("velocity heads")

// For the case of the valve being fully open
v_t=4*Q1/%pi/d^2;
v_r=((2*g*(z_t-z_s) + (4*f*L1/d + 1)*v_t^2)/(4*f*L_r/d + k + 1))^(1/2);

H1=4*f*L_r/d*v_r^2/2/g + 4*f*L_s/d*(v_r^2+v_t^2)/2/g + k*v_r^2/2/g + v_r^2/2/g;

Q=%pi*d^2/4*(v_t+v_r);

H2=12-70*Q-4300*Q^2;

disp("System head =")
disp(H1)
disp("m")

disp("Delivered head =")
disp(H2)
disp("m")

disp("The delivered head therefore closely matches the system head at the flow rate of 1.1*10^(-2) m^3/s, corresponding to the duty point")