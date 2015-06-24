
clear
 clc
//To find conversion factor between light year ang meters
//to find distance to the star proxima centuri

// GIVEN::

//distance 
d = 4*10^16 //in light years
// velocity of light
v = 3.00*10^8 // m/s

// SOLUTION:

//conversion factor 
// first finding conversion between 1 year and seconds
y = (1)*(365.25/1)*(24/1)*(60/1)*(60/1) // seconds
//now finding conversion between light year ang meters
light_year = (y*v) // meters

//to find distance to the star proxima centuri
distance = (d)*(1/light_year)// light years
light_year = nearfloat("pred",9.48e15)
printf ("\n\n Conversion between 1 year and seconds y = \n\n %.2e seconds" ,y);
printf ("\n\n Conversion between light year ang meters 1 light year =\n\n  %.2e m" ,light_year);
printf ("\n\n Distance to the star proxima centuri  distance =\n\n  %.1f light years" ,distance);
