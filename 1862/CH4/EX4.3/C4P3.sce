


 clc
//to find direction in which crate moving

// GIVEN::
//refer to figure 4-8 from page no.70
//velocity of plane
v =155//in km/h
//horizontal velocity of package
v0x = 155//in km/h
//since initial velocity of package is same that of plane but in horizontal direction

//elevation of plane directly above the target
y = -225//in meters
// y is negetive as packages are falling in downward direction 
//acceleration due to gravity
g = 9.81//in m/s^2



// SOLUTION:

//time of fall
t = sqrt(-(2*y)/g)//in seconds
//horizontal distance travelled by the package in time t
//applying kinematic equations
x= ((v0x*t)/3600)*1000//in meters
//angle of sight should be
alpha = atand(x/abs(y))//in degrees
x = round(x)
t = nearfloat("succ",6.78)
printf ("\n\n Time of fall t = \n\n %.2f seconds",t);
printf ("\n\n Horizontal distance travelled by the package in time t x = \n\n %3i meters",x);
printf ("\n\n Angle of sight should be alpha = \n\n %2i degrees",alpha);
