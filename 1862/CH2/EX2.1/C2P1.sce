
clear
 clc
//to find distance travelled to the north and east does the airplane travel

// GIVEN::

//distance travelled by airplane 
d = 209// in km
//angle made by airplane east of due north that is angle made with y direction
theta = 22.5// in degrees

// SOLUTION:

//angle made by airplane with x direction
fi = 90-theta//in degrees
// distance travelled to the north
dy = d*sind(fi)
//distance travelled to the east
dx = d*cosd(fi)
printf ("\n\n Angle made by airplane with x direction fi =\n\n %.1f degrees",fi);
printf ("\n\n Distance travelled to the north by airplane dx =\n\n %.1f km",dx);
printf ("\n\n Distance travelled to the east by airplane dy  =\n\n %3i km",dy);
