clear
clc
//Example 13.9 COMPRESSIBLE FLOW
k=1.4;
p1=150000; //upstream pressure[Pa]
p2=100000; //throat pressure[Pa]
T1=300; //temperature[K]
R=287; //[J/Kg.K]
//Ideal gas law
rho1=p1/(R*T1) //[Kg/m^3]
D1=0.03; //[m]
D2=0.01; //[m]
A2=%pi*D2^2/4 //area[m^2]
Cd=1;
//Mass flow rate
m=Cd*A2*((p2/p1)^(1/k))*{([2*k/(k-1)]*p1*rho1*[1-(p2/p1)^((k-1)/k)])/(1-(p2/p1)^(2/k)*(D2/D1)^4)}^(1/2) //[Kg/s]
printf("\nThe mass flow rate of air flowing through a venturi meter = %.4f kg/s.\n",m)