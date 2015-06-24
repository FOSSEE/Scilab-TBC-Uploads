clc
//Chapter2
//Ex_2.5
//Given
d=8.96*10^3 //in Kg/m3
NA=6.02*10^23 //mol^-1
Mat=63.56*10^-3 //Kg/mol
k=1.38*10^-23 //J/K
T=300 //kelvin
e=1.6*10^-19 //in couloumbs
m_e= 9.1*10^-31 //in Kg
u=1.25*10^6//m/s
f=4*10^12 //frequency in s^-1
Ns=d*NA/Mat// atomic concentration in m^-3
M=Mat/NA
w=2*%pi*f //angular frequency of the vibration 
//by virtue of Equipartition of energy  theorem
a=sqrt((2*k*T)/(M*w^2))
S=%pi*a^2 //cross sectional area
t=1/(S*u*Ns) //mean free time
u_d=e*t/m_e //drift velocity
u_d=u_d*10^4 //change in units
Ns=Ns/10^6 //in cm^-3
sigma=e*Ns*u_d //conductivity
disp(u_d,"drift velocity of electrons in m2/V/s is")
disp(sigma," conductivity of copper in ohm^-1/cm is")
//slight change in the answer is due to the computation method, otherwise answer is matching with textbook
