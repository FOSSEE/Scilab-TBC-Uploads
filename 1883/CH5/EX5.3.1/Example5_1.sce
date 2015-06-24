//Chapter-5,Example5_3_1,pg 5-5

h=6.63*10^-34                                    //Plancks constant

m=10^-2                                          //mass of an moving object

v1=1                                             //velocity of that object

wavelength_1=h/(m*v1)

printf("\nThe de Broglie Wavelength is\n")

disp(wavelength_1)

printf("meter\n")

wavelength_2=10^-10                                      //new de Broglie wavelength

v2=h/(m*wavelength_2)                                    //new velocity of an object 

printf("\nThe new velocity of an object is\n")

disp(v2)

printf("meter/sec\n")

d=10^-3                                          //Distance travelled with speed v2

t=(d/v2)/(365*24*60*60)                                           //time required to travel distance

printf("\nTime required to travel distance is\n")

disp(t)

printf("years\n")

//mistake in textbook
