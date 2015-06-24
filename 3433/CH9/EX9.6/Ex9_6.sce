clear;
clc;
funcprot(0);

//given data
//data from EXAMPLE 9.3
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

//data from this example
Pa = 1.013;//atmospheric pressure in bar
Tw = 25;//temperature of water in degC
Pv = 0.03166;//vapor pressure of water at Tw
rho = 1000;//density of wate in kg/m^3
g = 9.81;//acceleration due to gravity in m/s^2

H3 = ((c4^2 - c3^2)/(2*g)) + delHDT - z;
H2 = H_eps-delHN-(c2^2)/(2*g);
delW = g*(H_eps-delHN-delHR-z)-0.5*c3^2 -g*H3;
ctheta2 = delW/U2;
alpha2 = (180/%pi)*atan(ctheta2/c3);
beta2 = (180/%pi)*atan((ctheta2-U2)/c3);
eff_H = delW/(g*H_eps);
omega = (omega_sp*(g*H_eps)^(5/4))/sqrt(Q*delW);

Hs = (Pa-Pv)*(10^5)/(rho*g) - z;
sigma = Hs/H_eps;
omega_ss = omega*(Q^0.5)/(g*Hs)^(3/4);

//Results
printf('The NSPH for the turbine = %.3f m.',Hs);
if omega_ss>4.0 then
    printf('\n Since the suction specific speed (= %.4f.)is greater than 4.0(rad), the cavitation is likely to occur.',omega_ss);
end

//there is small error in the answer given in textbook
