//Transport Processes and Seperation Process Principles
//Chapter 3
//Example 3.1-2
//Principles of Momentum Transfer and Applications
//given data
rho=997.2;//density of water at 300K in kg/m3
v=1;//velocity of air in m/s
Dp=0.09;//diameter of a cylinder
mu=0.9142/1000;//viscosity of water Pa.s
Re=Dp*v*rho/mu;//Reynolds Number
Cd=1.4;//drag coefficient; found from a graph by the american chemical society
L=1;//length of the tube in m
Ap=L*Dp;
Fd=Cd*(v*v/2)*rho*Ap;//drag force in newtons
mprintf("the drag force is %f N",Fd)
