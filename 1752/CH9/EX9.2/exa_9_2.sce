//Exa 9.2
clc;
clear;
close;
format('v',9)
//given data
h_fg=2310*10^3;// in J/kg
rho=980;// in kg/m^3
k=0.67;// in W/mK
Cp=4.18;
delta=.41*10^-6;// in m^2/s
miu=rho*delta;
T_sat=70;// in degree C
T_s=55;// in degree C
L=1;// in m
d=0.03;// in m
g=9.81;
N=5;
// (a) for Horizontal tube
h_bar = 0.725*[ rho^2*g*h_fg*k^3/(N*miu*d*(T_sat-T_s))]^(1/4);// in W/m^2k
// heat transfer rate
q=h_bar*%pi*d*L*N^2*(T_sat-T_s);// in watt
disp(q*10^-3,"Heat transfer rate for horizontal tube in kW")
//rate of condensation
m=q/h_fg;// in kg/s
disp(m,"Rate of condenstion in kg/s");

// (b) For Vertical tube
h_bar = 1.13*[ rho^2*g*h_fg*k^3/(miu*L*(T_sat-T_s))]^(1/4);// in W/m^2k
// heat transfer rate
q=h_bar*%pi*d*L*N^2*(T_sat-T_s);// in watt
disp(q*10^-3,"Heat transfer rate for vertical tube in kW")
//rate of condensation
m=q/h_fg;// in kg/s
disp(m,"Rate of condenstion in kg/s");

