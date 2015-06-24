//Chapter 3, Exmaple 7, page 105
//Mean square velocity of Helium 
clc
clear
//based on equation 3.2 and 3.3 we derive the gas density
N = 178*10**-3 // kg/m^3
// calculating mean square velocity
v2 = (3*1.01*10**5)/N
printf("\nV^2 = %e m^2/s^2",v2)
v = sqrt(v2)
printf("\nMean square velocity = %f m/s",v)

//Answer may vary due to round off error
