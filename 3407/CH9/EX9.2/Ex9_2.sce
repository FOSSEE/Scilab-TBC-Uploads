clear;
clc;
funcprot(0);

//given data
P = 4.0;//in MW
N = 375;//in rev/min
H_eps = 200;//in m
KN = 0.98;//nozzle velocity coefficient
d = 1.5;//in m
k = 0.15;//decrease in relative flow velocity across the buckets
alpha = 165;//in deg
g = 9.81;//in m/s^2
rho = 1000;//in kg/m^3

//Calculations
U = N*%pi*d*0.5/30;
c1 = KN*sqrt(2*g*H_eps);
nu = U/c1;
eff = 2*nu*(1-nu)*(1-(1-k)*cos(alpha*%pi/180));
Q = (P*10^6 /eff)/(rho*g*H_eps);
Aj = Q/(2*c1);
dj = sqrt(4*Aj/%pi);
omega_sp = (N*%pi/30)*sqrt((P*10^6)/rho)/((g*H_eps)^(5/4));

//Results
printf('(i)The runner efficiency = %.4f',eff);
printf('\n (ii)The diameter of each jet = %.4f m',dj);
printf('\n (iii)The power specific speed = %.3f rad',omega_sp);
