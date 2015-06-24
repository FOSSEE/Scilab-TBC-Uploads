
clear
 clc
//to find rotational velocity when it reaches end of the string

// GIVEN::

//refer to figure 9-34(a) from page no. 196
//total mass of yo-yo
M = 0.24//in kg
//radius of disk
R = 2.8//in cm
//radius of shaft
R0 = 0.25//in cm
//length of the string
L = 1.2//in meters
//initial velocity of yo-yo
v0 = 1.4//in m/s
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:

//refer to figure 9-34(b) from page no. 196
//momemt of inertia
I = (1/2*(M*R^2))
//applying newton's second law
//and applying rotational form of newton's second law 
//angular acceleration
az = (g*100/R0)*(1/(1+R^2/(2*R0^2)))//in rad/s^2
//angle through which yo-yo rotates
fi = L/(R0*10^-2)//in rad
//initial angular velocity
w0z = v0/(R0*10^-2)//in rad/s
//solving using equation to find out time
y = poly([-fi w0z (1/2*az)],'t','coeff')
c = roots(y)
//taking only positive value as it is time
t2 = c(2)//in seconds
//rotational velocity when it reaches end of the string
wz = w0z+(az*t2)//in rad/s^2

printf ("\n\n Angular acceleration az = \n\n %.1f rad/s^2",az);
printf ("\n\n Time for calculating rotational velocity  t2 = \n\n %.2f seconds",t2);
printf ("\n\n initial angular velocity w0z = \n\n %3i rad/s",w0z);
printf ("\n\n Rotational velocity when it reaches end of the string wz = \n\n %3i rad/s^2",wz);
