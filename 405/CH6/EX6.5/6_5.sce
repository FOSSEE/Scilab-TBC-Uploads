clear;
clc;
printf("\t\t\tExample Number 6.5\n\n\n");
// heat transfer in a rough tube 
// illustration6.5
// solution

Tw = 90;// [degree celsius] temperature of tube wall 
d = 0.02;// [m] diameter of tube 
u = 3;// [m/s] velocity of air
Tw_i = 40;// [degree celsius] entering water temperature 
Tw_f = 60;// [degree celsius] leaving water temperature
Cp = 4.174*10^3;// [J/kg K]
Tb_bar = (Tw_i+Tw_f)/2;// [degree celsius]
// we first calculate the heat transfer from q = m_dot*Cp*dTb
q = 989*3*%pi*0.01^(2)*4174*(Tw_f-Tw_i);// [W]
// for the rough tube condition, we may employ the Petukhov relation, equation (6-7) The mean film temperaturee is 
Tf = (Tw+Tb_bar)/2;// [degree celsius]
// and the fluid properties are 
rho = 978;// [kg/cubic meter] density of gas
mu = 4.0*10^(-4);// [kg/m s] viscosity  
k = 0.664;// [W/m degree celsius]
Pr = 2.54;// prandtl no.
// also
mu_b = 5.55*10^(-4);// [kg/m s] viscosity  
mu_w = 2.81*10^(-4);// [kg/m s] viscosity  
// the reynolds number is thus 
Re_d = rho*u*d/mu;
// consulting figure(6-14), we find the friction factor as 
f_f = 0.0218;
// because Tw>Tb, we take 
n = 0.11;
// and obtain
Nu_d = ((f_f*Re_d*2.54)/((1.07+12.7*(f_f/8)^(0.5)*(2.54^(2/3)-1))*8))*(mu_b/mu_w)^(n);
h = Nu_d*k/d;// [W/square meter degree celsius]
// the tube length is obtained from energy balance 
L = q/(h*%pi*d*(Tw-Tb_bar));// [m]
printf("the length of tube necessary to accomplish the heating is %f m",L);
 
