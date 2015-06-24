clear;
clc;
printf("\t\t\tExample Number 4.7(Page no.-154-155)\n\n\n");
// long cylinder suddenly exposed to convection 
// Example 4.7
// solution

d = 0.05;// [m] diameter of cylinder
Ti = 200;// [degree celsius] initial temperature of aluminium cylinder
Tinf = 70;// [degree celsius] temperature of environment
h = 525;// [W/square meter degree celsius] heat transfer coefficient
// we have
theta_i = Ti-Tinf;// [degree celsius]
alpha = 8.4*10^(-5);// [square meter/s]
ro = d/2;// [m]
t = 60;// [s]
k = 215;// [W/m degree celsius]
r = 0.0125;// [m]
rho = 2700;// [kg/cubic meter]
C = 900;// [J/kg degree celsius]
// we compute
Z = alpha*t/ro^2;
X = k/(h*ro);
r_by_ro = r/ro;
// from figure 4-8(page no.-146)
theta_o_by_theta_i = 0.38;
// and from figure 4-11(page no.-150) at r/ro = 0.5
theta_by_theta_o = 0.98;
// so that 
theta_by_theta_i = theta_o_by_theta_i*theta_by_theta_o;
theta = theta_i*theta_by_theta_i;// [degree celsius]
T = Tinf+theta;// [degree celsius]
// to compute the heat lost, we determine
V = h^2*alpha*t/k^2;
B = h*ro/k;
// then from figure 4-15(page no.-153)
Q_by_Qo = 0.65;
// for unit length
Qo_by_L = rho*C*%pi*ro^2*theta_i;// [J/m]
// and the actual heat lost per unit length is 
Q_by_L = Qo_by_L*Q_by_Qo;// [J/m]
printf("temperature at a radius of 1.25 cm is %f degree celsius",T);
printf("\n\nheat lost per unit length 1 minute after the cylinder is exposed to the environment is %e J/m",Q_by_L);