clc;
//Example 7.2
//page no. 65
printf("Example 7.2 page no. 65\n\n");
//water flowing through a converging circular pipe fig 7.3
//we have to determine mass and volumatric flow rates, mass flux of water 
D1=.14// diameter of pipe at section 1
D2=.07//diameter of pipe at section2
v1=2//velocity at section
S1=%pi*(D1^2)/4//surface area at section 1
rho=1000//density of water
printf("\n diameter D1=%f m\n diameter D2=%f m\n v1=%f m/s\n Surface area S1=%f m^2\n density of water rho=%f  kg/m^3 ",D1,D2,v1,S1,rho); 
q1= S1*v1//volumatric flow rate at section 1
m1=rho*q1//mass flow rate at section 1
G=m1/S1//mass flux at section 1
printf("\n volumatric flow rate q1=%f m^3/s\n mass flow ratem1=%f kg/s\n mass flux G=%f kg/m^2*s",q1,m1,G);
S2=(%pi*D2^2)/4
q2=q1//q2 volumatric flow rate at section 2,due to steady flow q1=q2
printf("\n surface areaS1=%f m^2\n volumatric flow rate q2=%f m^3/s",S1,q1)
v2=(v1*S1)/S2//v2 velocity at section 2
printf("\n velocity v2=%f m/s",v2)
//conclusion :decrease cross section area results in an increase in flow velocity for an incompressible fluid. 
