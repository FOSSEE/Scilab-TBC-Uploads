clear;
clc;
printf("\t\t\tExample Number 11.5\n\n\n");
// water evaporation rate
// Example 11.5(page no.-593-594)
// solution

Ta = 38+273;// [K] temperature of atmospheric air
RH = 0.30;// relative humidity
u = 10;// [mi/h] mean wind speed
R = 0.287;// universal gas constant
Dw = 0.256*10^(-4);// [square meter/s] from table A-8(page no.-610)
rho_w = 1000;// [kg/cubic meter]
// for this calculation we can make use of equation(11-36). from thermodynamic steam tables
p_g = 6.545;// [kPa] at 38 degree celsius
p_s = p_g;// [kPa]
p_w = RH*p_s;// [kPa]
p_s = 1.933;// [in Hg]
p_w = 0.580;// [in Hg]
// also 
u_bar = u*24;// [mi/day]
// equation(11-36) yields, with the application of the 0.7 factor
E_lp = 0.7*(0.37+0.0041*u_bar)*(p_s-p_w)^(0.88);// [in/day]
E_lp = E_lp*2.54/100;// [m/day]
// noting that standard pan has the diameter of 1.2m, we can use the figure to calculate the mass evaporation rate per unit area as
m_dot_w_by_A = E_lp*rho_w/24;// [kg/h square meter]
// as a matter of interest, we might calculate the molecular-diffusion rate of water vapour from equation(11-35), taking z1 as the 1.5m dimension above the standard pan.
z1 = 1.5;// [m]
// since     rho = p/(R*T)
// equation(11-35) can be written as 
m_dot_w_by_A1 = 0.622*Dw*p_g*3600/(R*Ta*z1);// [kg/h square meter]
printf("evaporation rate on the land under these conditions is %e kg/h square meter",m_dot_w_by_A1);


