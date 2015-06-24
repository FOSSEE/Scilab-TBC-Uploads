clc
//Chapter3
//Ex_21
//Given
lambda_o=632.8*10^-9 //in m
c=3*10^8 //in m/s
T=127 //in degree celcius
T=T+273 // in Kelvin
m_A=20.2*10^-3 // in Kg/mol
NA=6.023*10^23 //mol^-1
k=1.38*10^-23 //in J/K
m=m_A/NA //in Kg
vx=sqrt(k*T/m)
vo=c/lambda_o
delta_v=2*vo*vx/c
disp(delta_v*10^-9,"delta_v in GHz is")
delta_lambda=delta_v*(-lambda_o/vo)
disp(abs(delta_lambda),"delta_lambda in meters is")
