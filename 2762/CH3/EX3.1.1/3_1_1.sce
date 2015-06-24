//Transport Processes and Seperation Process Principles
//Chapter 3
//Example 3.1-1
//Principles of Momentum Transfer and Applications
//given data
rho=1.137;
mu=1.9e-5;
Dp=0.042;
v0=23;
Re=(Dp*v0*rho)/mu
//from the mentioned graph,
Cd=0.47;//drag coefficient as seen from the graph
Ap=(%pi*Dp*Dp)/4;//surface area of sphere
Fd=Cd*(v0*v0/2)*rho*Ap;//drag force
mprintf("drag coefficient= %f",Cd)
mprintf("drag force= %f N",Fd)
