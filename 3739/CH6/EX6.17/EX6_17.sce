//Chapter 6, Example 6.17, page 271
clc


//Initialisation
pt=30                                      //transmitter power in watt
d=15                                      //distance in km
gt=3                                       //transmitter gain
ht=30                                      //transmitter height in m
hr=4                                       //receiver height in m
no=3.77*10**14

//Calculation
gt1=10**(gt*10**-1)
pt1=gt1*pt
e=88*sqrt(pt1)*pt*hr/(2*d**2)                //Field strength
pr1=(e**2)/(2*no)                            //Recieved power

//Results
printf("Field strength = %f V/m",e)
printf("\nRecieved power = %.2f pW",(pr1*10**12))
