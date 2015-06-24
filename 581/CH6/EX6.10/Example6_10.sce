
clear;
clc;

printf("\t Example 6.3\n");

l=2; // length of plate,m
p=1000; // power density,W/m^2
u=10; // air velocity,m/s
T1=290; // wind tunnel temp.,K
p2=1; // pressure,atm
Re = 400000; // reynolds no.

v=1.578*10^-5; // kinematic viscosity, m^2/s
k=0.02623; // thermal conductivity,W/(m*K)
Pr=0.713; // prandtl no.
Rel=u*l/v; //reynolds no. at 10 m/s

Nul=1845; // nusselt no.

h=Nul*k/l; //convection coefficient,W/(m^2*K)

Tavg=T1+p/h;

printf("\t average temperature of plate is : %.0f K\n",Tavg);
//to take better account of the transition region, we can use churchill eqn.
x=Rel*Pr^(2/3)/(1+(0.0468/Pr)^2/3)^0.5;  
x1=1.875*x*Re;
Nul1=0.45+0.6774*x^(0.5)*(1+((x/12500)^3/5/(1+(x1/x)^3.5)^0.4)^0.5);

H=Nul1*k/l;   //convection coefficient,W/(m^2*K)
Tw=290+1000/H-77.14;   //average temperature of plate,K
printf("\t average temperature of plate is :%.0f K , thus in this case, the average heat transfer coefficient is 33 percent higher when the transition regime is included.\n",Tw);
//end