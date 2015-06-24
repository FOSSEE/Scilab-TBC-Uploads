
//Variable Declaration
NN=14.22296917        //Mean Motion (1/day)
u=3.986005*(10**14)   //Earth's Gravitational COnstant(m^3/sec^2)

//Calculation
n0=(NN*2*3.142)/(24*60*60)                  //Mean Motion(rad/sec)
a=((u/n0**2)**(0.33333))/1000   //Radius of the orbit by kepler's 3rd law(km)


//Result
printf("The Semimajor axis for given satellite parameters is : %.2f km",a)


