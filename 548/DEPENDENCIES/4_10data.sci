//Consider an airfoil in a flow of air,where far ahead of airfoil conditions are given.
//the condition for pressure and velocity are not in SI unit so we need to convert it to SI unit.
P=1.013*1.01*10^5 //pressure far ahead of airfoil in N/m^2
V=804.7*5/18 //velocity far ahead of airfoil in m/s
D=1.23; //density in kg/m^3
R=287;//gas constant for air,J/Kg.K
T=P/(D*R) //Temperature far ahead of airfoil in degree Kelvin
Pa=0.716*1.01*10^5 //pressure at a given point A on airfoil
Cp=1008; //for air specific heat at constant pressure,J/Kg.K
y=1.4;// specific heat ratio for air
//Assuming isentropic flow:
Ta=T*(Pa/P)^((y-1)/y) //temperature at the given point A on airfoil

