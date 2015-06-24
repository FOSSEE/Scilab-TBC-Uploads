


 clc
//to find weight of the satellite at h = 210km above the earth's surface
//to find tangential speed of satellite required

// GIVEN::

//mass of the satellite
m =1250//in kg
//altitude at which satellite is required to be placed
h = 210//in km
//radius of the earth
R = 6370//in km
//acceleration due to gravity
g = 9.2//in m/s^2

// SOLUTION:

//weight of the satellite at the altitude h = 210km above earth's surface
w = m*g//in N
//to find tangential speed of satellite required
//force of gravity is weight of the satellite i.e. F_SE = w
//radius of orbit of satellite
r = R + h//in km
v =sqrt(w*(r*1000)/m)//in m/s //taking radius in meters
v1 = v*(3600/1609.344)//in mi/h
v1 = nearfloat("pred",17401)
printf ("\n\n Weight of the satellite at the altitude h = 210km above earths surface w = \n\n %.2e N",w);
printf ("\n\n Tangential speed of satellite required v = \n\n %4i m/s",v);
printf ("\n\n Tangential speed of satellite required v = \n\n %5i mi/h",v1);
