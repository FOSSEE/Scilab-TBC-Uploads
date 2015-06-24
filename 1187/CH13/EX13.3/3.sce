clc

// Static head upstream = -11 mm H2O = -11*1000/1.2 mm air = -9.167 m air

h=9.167; // m air
g=9.81; // m/s^2
d1=0.75; // m, tip diameters
d2=0.4; // m, hub diameters
d3=0.075; // m, diameter above atmospheric pressure
d4=0.011; // m, diameter below atmospheric pressure
P=6500; // W
w=25;
rho=1000; // kg/m^3

v=sqrt(2*g*h); // Velocity upstream
Q=%pi/4*d1^2*v; // Volume flow rate

H=d3+d4; // Total head rise across fans
p=rho*g*H;

n_fan=Q*p/P;
disp("Total efficiency =")
disp(n_fan)

p_ideal=p/n_fan;
u=%pi*w*(d1+d2)/2;

v_w2_A=p_ideal/(2*1.2*u);

v1=Q/(%pi/4*(d1^2-d2^2  ));

beta1_A=atand(v1/u);

beta2_A=atand(v1/(u-v_w2_A));

beta1_B=atand(v1/(u+v_w2_A));

beta2_B=atand(v1/u);

printf("Inlet angles for resp. fans %f & %f \n\n", beta1_A, beta1_B)

printf("Outlet angles for resp. fans %f & %f", beta2_A, beta2_B)
