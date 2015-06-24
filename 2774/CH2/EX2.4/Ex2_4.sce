clc
//solution
//    initialization of variables
m=2 // mass of water in kg
P=2.2 // pressure in Mpa
T=800 // temperature in degree centigrade
 // Table C.3 is used for values
v=0.2467+(P-2)*(0.1972-0.2467)/(2.5-2)// specific volue by interpolatin between 2 and 2.5 MPa
V=m*v // final volume
printf("The Final Volume is %.3f m^3",V)


