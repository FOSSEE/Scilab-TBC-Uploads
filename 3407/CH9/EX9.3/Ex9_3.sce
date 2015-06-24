clear;
clc;
funcprot(0);

//given data
H_eps = 150;//in m
z = 2;//in m
U2 = 35;//runner tip speed in m/s
c3 = 10.5;//meridonal velocity of water in m/s
c4 = 3.5;//velocity at exit in m/s
delHN = 6.0;//in m
delHR = 10.0;//in m
delHDT = 1.0;//in m
g = 9.81;//in m/s^2
Q = 20;//in m^3/s
omega_sp = 0.8;//specific speed of turbine in rad
c2 = 38.73;//in m/s

//Calculations
H3 = ((c4^2 - c3^2)/(2*g)) + delHDT - z;
H2 = H_eps-delHN-(c2^2)/(2*g);
delW = g*(H_eps-delHN-delHR-z)-0.5*c3^2 -g*H3;
ctheta2 = delW/U2;
alpha2 = (180/%pi)*atan(ctheta2/c3);
beta2 = (180/%pi)*atan((ctheta2-U2)/c3);
eff_H = delW/(g*H_eps);
omega = (omega_sp*(g*H_eps)^(5/4))/sqrt(Q*delW);
N = omega*30/%pi;
D2 = 2*U2/omega;

//Results
printf('(i)The pressure head H3 relative to the trailrace = %.1f m\n The pressure head H2 at exit from the runner = %.2f m',H3,H2);
printf('\n(ii)The flow angles at runner inlet and at guide vane exit:\n alpha2 = %.1f deg\n beta2 = %.2f deg',alpha2,beta2);
printf('\n(iii)The hydraulic efficiency of the turbine = %.4f',eff_H);
printf('\n The speed of rotation, N = %d rev/min',N);
printf('\n The runner diameter is, D2 = %.3f m',D2);


//there are small errors in the answers given in textbook
