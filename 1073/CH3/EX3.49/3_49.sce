
clc;
clear;
//EXample 3.49
rho=1174    //[kg/m^3]
k=0.069 //[W/(m.K)]
mu=2.5*10^-4    //[N.s/m^2]
lambda=132*10^3 //[J/kg]
g=9.81  //[m/s^2]
Ts=323  //[K]
Tw=313  //[K]
dT=Ts-Tw    //[K]
//For square array,n=4
n=4 //number of tubes
Do=12   //[mm]
Do=Do/1000  //[m]
h=0.725*(rho^2*lambda*g*k^3/(n*Do*mu*dT))^(1/4) //W/(sq m.K) 
//For heat transfer area calcualtion,n=16
A=n*%pi*Do //[sq m]
A=0.603
Q=h*A*dT//[W/m]
m_dot=Q/lambda  //[kg/s]
m_dot=0.049     //Appriximation in book
m_dot=m_dot*3600    //[kg/h]
printf("\n Rate of condensation per unit length is %f kg/h",m_dot);
