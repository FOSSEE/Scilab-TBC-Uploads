clc
//initialization of new variables
clear
m=1 //kg
p=10^5 //N/m^2
A=1 //cm^2
w=0.5 //kg
rho=1000 //kg/m^2
//calculations
Ue=sqrt(2*p/rho)
m_0=w+m
m_s=w
Uf=Ue*log(m_0/m_s)
//results
printf('The exit velocity is %.2f m/s',Ue)
printf('\n The final velocity of the system is %.2f m/s ',Uf)
