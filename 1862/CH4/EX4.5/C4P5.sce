


 clc
//to find magnitude of gravitational force exterted on the moon by the earth 

// GIVEN::

//time required for i revolution
d = 27.3//in days
//radius of orbit
r1 = 238000 //in mi
//radius of orbit in meters
r = (238000*1609.344)//in meters
//mass of the moon
m = 7.36*10^22//in kg

// SOLUTION:

//time for one complete revolution in seconds
T = (27.3*86400)//in seconds
//speed of the moon
v = (2*3.14*r)/T//in m/s
v = nearfloat("pred",1019)
//centripital force by gravitational force
// equation of centripital force F_ME = mv^2/r
F_ME = (m*v^2)/r//in N
printf ("\n\n Time for one complete revolution in seconds T = \n\n %.2e seconds",T);
printf ("\n\n Speed of the moon v  = \n\n %4i m/s",v);
printf ("\n\n Magnitude of gravitational force exterted on the moon by the earth F_ME = \n\n %.2e N",F_ME);
