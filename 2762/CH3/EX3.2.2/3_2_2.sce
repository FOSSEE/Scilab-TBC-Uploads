//Transport Processes and Seperation Process Principles
//Chapter 3
//Example 3.2-2
//Principles of Momentum Transfer and Applications
//given data
delP=9.32e+4;//pressure diff in N/m2
D1=0.1541;//external diameter in m
D0=0.0566;//internal diameter in m
Dr=D0/D1;
Co=0.61;
rho=878; //oil density in kg/m3
v0=(Co/(sqrt(1-(Dr^4))))*sqrt((2*delP)/rho);//velocity calculation in m/s
A=(%pi/4)*D0*D0;//cross section area
V=A*v0;//volumetric flow rate
mprintf("the volumetric flow rate is %f m3/s",V);
//end
