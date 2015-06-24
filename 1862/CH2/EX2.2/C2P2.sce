
clear
 clc
//to find magnitude and direction of vector indicating location of car

// GIVEN::

//distance travelled due east on a level of road 
//s is represented as ax+by.since b has no x component and a has no y componebt we can write
Sx = 32// in km
//distance travelled before stopping after taking turn due north
Sy = 47// in km


// SOLUTION:

//magnitude of distance travelled
x = sqrt(Sx^2 + Sy^2)//in meters
//direction of travelling
fi = atand(Sy/Sx)//in degrees
g = Sy/Sx
x = round(x)
fi = round(fi)
printf ("\n\n Distance travelled due east on a level of road Sx =\n\n %2i km",Sx);
printf ("\n\n Distance travelled before stopping after taking turn due north Sy =\n\n %2i km",Sy);
printf ("\n\n Magnitude ofdistance travelled by automobile x =\n\n %2i km",x);
printf ("\n\n Value of tanfi =\n\n %.2f ",g);
printf ("\n\n Direction of automobile travelling fi =\n\n %2i degrees north of east",fi);
