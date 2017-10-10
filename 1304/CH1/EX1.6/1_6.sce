clear;
clc;
printf("\t\t\tExample Number 1.6\n\n\n");
// calculating heat flow from tube to the air flowing across it 
// solution

Q=100;//[W] heat transfer rate from sphere to the surrounding
d=0.1; //[m] diameter of sphere
dT=50; //[degree celcius] temeprature difference between sphere and surrounding ambient air 
//heat transfer rate Q is given by Q=hm*A*dT (by Newton's law of cooling)
//where hm= mean convection heat transfer coefficient
//A=Surface area of sphere = %pi*d^2
//Thus
hm=Q/(dT*%pi*d^(2));//[W/m^2 degree celcius]


printf("The convection heat transfer coefficient between the sphere and the ambient air is %f W/m^2 degree celcius",hm);

