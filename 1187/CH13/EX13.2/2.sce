clc

w=6.25;
D=0.75; // m
gv_angle=15; // guide vane angle in degrees
g=9.81; // m/s^2
H=27.5; // m
A1=0.2; // m^2
rho=1000; // kg/m^3
p_atm=101.3*10^3;
p_min=35*10^3;

u1=%pi*w*D;
v1=u1*sind(105)/sind(60);
v_r1=v1*sind(gv_angle);
v_w1=v1*cosd(gv_angle);
v_w2=0;

n_hydraulic=u1*v_w1/g/H;

n_overall=0.97*n_hydraulic;
disp("Overall efficiency =")
disp(n_overall)

Q=A1*v_r1;

P=n_overall*Q*rho*g*H;
Ohm_P=w*2*%pi/(g*H)^(5/4)*(P/rho)^(1/2);

// sigma > 0.119*(0.5)^(1.84) = 0.0331

sigma=0.0331;

//((p_atm-p_min)/(rho*g)-z0)/H > 0.0331

z0=((p_atm-p_min)/(rho*g))-sigma*H;
disp("Limiting value for the height of the draft tube above =")
disp(z0)
disp("m")
