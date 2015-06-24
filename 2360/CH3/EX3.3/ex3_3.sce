// Exa 3.3
format('v',7);clc;clear;close;
// Given data
B = 10*10^-3;// in Wb/m^2
N = 200;// in turns
l = 16;// in mm
K = 12*10^-9;// in Nm/rad
J = 50*10^-9;// in kg-m^2
D = 5*10^-9;// in Nm/rads^-1
R = 120;// in ohm
A = l^2;// in mm^2
A = A * 10^-6;// in m^2
G = N*B*A;// in Nm/A
i = 1;// in µA
i = i * 10^-6;// in A
theta_f = (G*i)/K;// in rad
r = 1;// in m
r = r * 10^3;// in mm
// deflection of the galvanometer 
d = 2*theta_f*r;// in mm
disp(d,"The deflection of the galvanometer in mm is");
i = i * 10^6;// in µA
// Current sensitivity 
Si = d/i;// in mm/µA
disp(Si,"The current sensitivity in mm/µA is");
// Voltage sensitivity 
Sv = d/(i*R);// in mm/µV
disp(Sv,"The voltage sensitivity in mm/µV is");
So = d/(i*10^-6*10^6);//megaohm sensitivity in Mohm/mm
disp(So,"The megaohm sensitivity in Mohm/mm is");
omega_d = (sqrt((4*J*K) - ((D)^2)))/(2*J);// in rad/sec
f_d = omega_d/(2*%pi);//frequency of damped oscillation  in Hz
disp(f_d,"The frequency of damped oscillation in Hz is");
omega_n = sqrt(K/J);
// period of free oscillation 
To = (2*%pi)/omega_n;// in sec
disp(To,"The period of free oscillation in sec is");
Dc = 2*sqrt( J*K );
// The relative damping 
Epsilon = D/Dc;
disp(Epsilon,"The relative damping is");
// The first maximum deflection 
theta1 = theta_f * ( 1 + (%e^(-%pi*Epsilon)/(sqrt(1 - ((Epsilon)^2)))) );// in rad
theta1 = theta1*2*r;// in mm
disp(theta1,"The first maximum deflection in mm is");
// The logarithmic decrement 
lembda = (%pi*Epsilon)/(sqrt(1 - ((Epsilon)^2)));
disp(lembda,"The logarithmic decrement is");
