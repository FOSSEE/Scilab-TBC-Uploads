clear;
clc;
printf("\t\t\tExample Number 6.9\n\n\n");
// heat transfer from sphere 
// illustration6.9
// solution

p = 101325;// [Pa] pressure of air
Ta = 27+273.15;// [K] temperature of air 
d = 0.012;// [m] diameter of sphere
u = 4;// [m/s] velocity of air 
Ts = 77+273.15;// [degree celsius] surface temperature of sphere
// consulting equation (6-30) we find that the reynolds number is evaluated at the free-stream temperature.
// we therefore need the following properties at Ta = 300.15K
v = 15.69*10^(-6);// [square meter/s]
k = 0.02624;// [W/m degree celsius]
Pr = 0.708;// prandtl number
mu_inf = 1.8462*10^(-5);// [kg/m s]
// at Ts = 350K
mu_w = 2.075*10^(-5);// [kg/m s]
Re_d = u*d/v;// reynolds number
// from equation (6-30),
Nu_bar = 2+((0.4)*(Re_d)^(1/2)+0.06*(Re_d)^(2/3))*(Pr^(0.4))*((mu_inf/mu_w)^(1/4));
// and
h_bar = Nu_bar*k/d;// [W/square meter degree celsius] heat transfer coefficient
// the heat transfer is then 
A = 4*%pi*d^(2)/4;// [square meter] area of sphere
q = h_bar*A*(Ts-Ta);// [W]
// for comparison purposes let us also calculate the heat-transfer coefficient using equation(6-25). the film temperature is 
Tf = (Ta+Ts)/2;// [K]
v_f = 18.23*10^(-6);// [square meter/s]
k_f = 0.02814;// [W/m degree celsius] 
// reynolds number is 
Re_d1 = u*d/v_f;
// from equation (6-25)
Nu_f = 0.37*(u*d/v_f)^(0.6);
// and h_bar is calculated as
h_bar = Nu_f*k_f/d;// [W/square meter degree celsius]
printf("heat lost by the sphere is %f W",q);


