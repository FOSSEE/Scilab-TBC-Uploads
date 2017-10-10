//Example 2.1.1
// Calculate the Orbital radius for a Geostationary Satellite

//Variable Declaration
T=86164.09  // Time Period for 1 sidereal day in Sec

//Calculation
u=(3.986004418*10^5)
a=((T^2*u)/(4*%pi^2))^(1/3)

//Result
printf("The Radius of the circular orbit with 1 day period is : %d km",a)

