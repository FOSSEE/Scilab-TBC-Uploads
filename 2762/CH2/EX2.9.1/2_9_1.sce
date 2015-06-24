//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.9-1
//Principles of Momentum Transfer and Overall Balances
//given data
rho=820;//density in kg/m3
del=1.7/1000;//film thikness in m
g=9.806;//g force
mu=0.2;//viscocity in Pa.s
T=(rho^2)*(del^3)*g/(3*mu);//T= mass flow rate per unit width of wall
Re=(4*T)/mu;//Reynolds Number
v=(rho*g*(del^2))/(3*mu);//avg velocity
mprintf("mass flow rate per unit width of wall= %f kg/(s.m)",T)
mprintf(" Reynolds Number= %f",Re)
mprintf(" avg velocity= %f m/s",v)
//end
