

//exapple 4.1 
clc; funcprot(0);
// Initialization of Variable
rho=998;
rhom=1.354*10^4;//density  of mercury
M=2.83/100;
mu=1.001/1000;
mun=1.182/10^5;//vicosity of natural gas
R=8.314;
g=9.81;
h=28.6/100;
d=54/100;
//part1
nu=1/rho;
delP=h*g*(rhom-rho);
umax=sqrt(2*nu*delP);
umax=round(umax*10)/10;
disp(umax,"maximum fluid velocity in (m/s)");
Re=umax*d*rho/mu;
printf("reynold no. is %.2e",Re);
//using chart
u=0.81*umax;
G=rho*pi*d^2/4*u;
disp(G,"mass flow rate in (kg/s):");
disp(G/rho,"Volumetric flow rate in (m^3/s):");
//part2
P1=689*1000;//initial pressure
T=273+21;
nu1=R*T/M/P1;
nu1=round(nu1*10000)/10000;
rhog=1/nu1;//density of gas
h=17.4/100;
P2=P1+h*(rho-rhog)*g;
P2=round(P2/100)*100;
umax2=sqrt(2*P1*nu1*log(P2/P1));
disp(umax2,"maximum fluid velocity in (m/s)");
Re=rhog*umax2*d/mun;
printf("reynold no. is %.3e",Re);
//from table
u=0.81*umax2;
Q=pi*d^2/4*u;
disp(Q,"volumetric flow rate is (m^3/s):");
disp(Q*rhog,"mass flow rate  in (kg/s):")


