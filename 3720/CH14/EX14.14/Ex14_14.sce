//Example 14-14
clc;clear;funcprot(0);
// Properties
rho=998;//The density of water at 20°C in kg/m^3
//Given values
D_a=2.05;//Diameter in m
n_a=120;//rpm
n_b=120;//rpm
omega_a=12.57;//rad/s
omega_b=12.57;//rad/s
V_a=350;//m^3/s
H_a=75.0;//m
H_b=104;//m
bhp_a=242*10^6;//MW
bhp_b=548*10^6
g=9.81;//The acceleration due to gravity in m/s^2

// Calculation
N_StA=(((omega_a*bhp_a^(1/2)))/((rho)^(1/2)*(g*H_a)^(5/4)));
printf('The dimensionless turbine specific speed for turbine A,N_StA=%0.2f\n',N_StA);
N_StB=(((omega_b*bhp_b^(1/2)))/((rho)^(1/2)*(g*H_b)^(5/4)));
printf('The dimensionless turbine specific speed for turbine B,N_StB=%0.2f\n',N_StB);
//N_(St,US,A)=N_(St,US,B)=N_stus
N_St=1.615;
N_stus=43.46*N_St;
printf('The turbine specific speed in customary U.S. units,N_(st,us)=%0.1f\n',N_stus);
