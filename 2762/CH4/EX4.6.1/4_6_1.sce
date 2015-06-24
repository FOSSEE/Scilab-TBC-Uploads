//Transport Processes and Seperation Process Principles
//Chapter 4
//Example 4.6-1
//Principles of Steady State Heat Transfer
//given data
//si units
Tw=82.2;//temp of the fin
Tb=15.6;//temp of cooling air
Tf=(Tw+Tb)/2;
k=0.028;//thermal conductivity
rho=1.097;//density of water
mu=1.95e-5;//viscosity
Pr=0.704;//Prandtl No
L=0.051;//fin thickness
v=12.2;
Re=(L*v*rho)/mu;//reynolds number
Nu=0.664*(Re^0.5)*(Pr^(1/3));
h=Nu*k/L;
mprintf("a) heat transfer coefficient= %f W/m2 K",h);
//part b
Reb=4*100000//reynolds number
Nub=0.0366*(Re^0.8)*(Pr^(1/3));
hb=Nub*(k/L);
mprintf("b) heat transfer coefficient= %f W/m2 K",hb);
