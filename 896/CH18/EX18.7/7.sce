clc
//Example 18.7
//Calculate the value of turbulent kinematic viscosity
K=0.00576//m^2/s^2
eta=0.0196//m^2/s^3
C_mew=0.09//dimentionless
v_t=C_mew*(0.00576)^2/(0.0196)//m^2/s
printf("the value of turbulent kinematic viscosity is %f m^2/s",v_t);