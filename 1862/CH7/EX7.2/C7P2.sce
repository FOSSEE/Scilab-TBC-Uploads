clear
clc
//to find center of mass of system
//to find acceleration of center of mass

// GIVEN::

//refer to figure 7-10(a) fron page no. 144
//consider +ve x direction as our reference axis
//mass of first partical
m1 = 4.1//in kg
//mass of second partical
m2 = 8.2//in kg
//mass of third partical
m3 = 4.1//in kg
//from figure 7-20(a)
//x coordinate of first partical
x1 = -2//in cm
//y coordinate of first partical
y1 = 3//in cm
//x coordinate of second partical
x2 = 4//in cm
//y coordinate of second partical
y2 = 2//in cm
//x coordinate of third partical
x3 = 1//in cm
//y coordinate of third partical
y3 = -2//in cm
//magnitude of first external force
F1 = -6//in N //since acting in -ve x direction
//magnitude of second external force
F2 = 12//in N
//magnitude of third external force
F3 = 14//in N

// SOLUTION:
//refer to figure 7-10(a) and 7-10(b) fron page no. 144
//assuming all external forces are applied at center of mass
//total mass of system
M = m1 + m2 + m3//in kg
//applying center of mass formula
//x coordinate of center of mass
x_cm = (1/M)*(m1*x1 + m2*x2 + m3*x3)//in cm
//y coordinate of center of mass
y_cm = (1/M)*(m1*y1 + m2*y2 + m3*y3)//in cm

//refer to figure 7-10(b)
//component of force F1 in x direction
F1x = F1//in N
//component of force F2 in x direction
F2x = F2*cosd(45)//in N
//component of force F3 in x direction
F3x = F3//in N
//component of force F1 in y direction
F1y = 0//in N
//component of force F2 in y direction
F2y = F2*sind(45)//in N
//component of force F3 in y direction
F3y = 0//in N
//x component of net external force acting on the center of mass
SUM_fextx = F1x + F2x + F3x//in N
//y component of net external force acting on the center of mass
SUM_fexty = F1y + F2y + F3y//in N
//magnitude of net external force acting on the center of mass
SUM_Fext = sqrt(SUM_fextx^2 + SUM_fexty^2)//in N
//direction in which net force acts
fi = atand(SUM_fexty/SUM_fextx)//in degrees with x axis
//acceleration of center of mass
a_cm = SUM_Fext/(M)//in m/s^2
SUM_Fext = nearfloat("succ",18.6)

printf ("\n\n x coordinate of center of mass x_cm = \n\n %.1f cm",x_cm);
printf ("\n\n y coordinate of center of mass y_cm = \n\n %.1f cm",y_cm);
printf ("\n\n Magnitude of net external force acting on the center of mass in x direction SUM_fextx = \n\n %.1f N",SUM_fextx);
printf ("\n\n Magnitude of net external force acting on the center of mass in y direction SUM_fexty = \n\n %.1f N",SUM_fexty);
printf ("\n\n Magnitude of net external force acting on the center of mass SUM_Fext = \n\n %.1f N",SUM_Fext);
printf ("\n\n Direction in which net force acts with x axis fi = \n\n %2i degrees",fi);
printf ("\n\n Acceleration of center of mass a_cm = \n\n %.1f m/s^2",a_cm);
