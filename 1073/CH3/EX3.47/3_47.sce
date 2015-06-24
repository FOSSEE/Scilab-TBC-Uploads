clc;
clear;
//Example 3.47
mu=306*10^-6    //[N.s/m^2]
k=0.668 //[W/m.K]
rho=974 //[kg/m^3]
lambda=2225 //[kJ/kg]
lambda=lambda*10^3  //[J/kg.K]
g=9.81  //[m/s^2]
Ts=373  //[K]
Tw=357  //[K]
dT=Ts-Tw    //[K]
Do=25   //[mm]
Do=Do/1000  //[m]
h=0.725*((rho^2*g*lambda*k^3)/(mu*Do*dT))^(1.0/4.0) //[W/sq m.K]
Q_by_l=h*%pi*Do*dT  //[W/m]
m_dot_byl=(Q_by_l/lambda)   //[kg/s]
m_dot_byl=m_dot_byl*3600    //[kg/h]

printf("\nMean heat transfer coefficient is %f W/(sq m.K)\n",h);
printf("\nHeat transfer per unit length is %f W/m\n",Q_by_l);
printf("\nCondensate rate per unit length is %f kg/h",m_dot_byl);
