clc
//Example 3.8
//calculate the final or steady state pressure in tank
m_in=0.0001;//lbm/min
q_out=1;//ft^3/min
rho_sys=m_in/q_out//lbm/ft^3
rho_air=0.075;//lbm/ft^3
p_initial=1;//atm
p_steady=p_initial*(rho_sys/rho_air)//atm
printf("The steady state pressure is %f atm",p_steady);