
//Variable Declaration
u=3.986*(10**14)         //Earth's Gravitational constant(m^3/sec^2)

//Calculation
n=(2*3.14)/(24*60*60)    //Mean Motion(rad/sec)
a=((u/n**2)**(0.33333))/1000      //Radius of the orbit by kepler's 3rd law(km)

//Result
printf("The Radius of the circular orbit with 1 day period is : %d km",a)


