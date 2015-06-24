clc
//calc payload of a helium balloon
p_atm=1;//atm
T=293;//K
d=3;//m (diameter of the balloon)
//buoyant force=(density of air)*g*(volume of balloon)
//weight of balloon = (density of helium)*g*(volume of balloon)
//density for gases = PM/RT
//payload of balloon = buoyant force - weight
V_balloon=(%pi)*d^3/6;//m^3
R=8.2*10^(-2);//m^3.atm/mol/K
M_air=29;//Kg/Kmol
M_he=4;//Kg/Kmol
g=9.81;//m/s^2
payload=(V_balloon)*g*p_atm*(M_air-M_he)/R/T;//N
disp("Payload of the balloon is")
disp(payload)
disp("N")