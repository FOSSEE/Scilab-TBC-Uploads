//Example 2.3.1
//Drift with a Geostationary Satellite

//Variables
T=86400                    //T corresponds to 1 solar day
u=(3.986004418*10^5)  

//Calculation
//Part1 Orbital Radius
a=((T^2*u)/(4*%pi^2))^(1/3)  //4 pi^2=39.4784716
printf("The radius of the circular orbit is : %f km\n",a)

//Part2  Rate of Drift
drift=360*(235.9/T)
printf("The drift is %f degrees/day",drift)

