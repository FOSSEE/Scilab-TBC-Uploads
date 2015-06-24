//Transport Processes and Seperation Process Principles
//Chapter 3
//Example 3.1-4
//Principles of Momentum Transfer and Applications
//given data
D=0.61;//diameter of bed in m
h=2.44;//height of bed
A=(3.14*D*D)/4;//cross section area in m2
mdot=0.358;//mass flow rate of air in kg/s
E=0.38//void fraction
G=mdot/A;
Dp=0.0127;//diameter of spheres in m
mu=1.9e-5;//viscosity of air Pa.s
delL=2.44;
Re= (Dp*G/((1-E)*mu));//Reynolds Number
delP=0.05e+5;//assumed pressure difference in pascal
p1=1.115*101325;//air entering at this pressure in Pa
p2=p1-delP;
avgP=(p1+p2)/2;//average pressure
M=28.97;//molecular weight of air in SI units 
R=8314.34;//gas constant
T=311;//temp of air in K
avgrho=(M/(R*T))*avgP;//Avg density 
//(delP*rho/G*G)*(Dp/delL)*(E^3/(1-E))= (150/Re)+1.75: erguns equation in dimensionless groups
delPn=((150/Re)+1.75)*((G*G*delL*(1-E))/(avgrho*E*E*E*Dp));//calculated pressure drop
mprintf("calculated pressure drop= %f Pa",delPn)
//end
