
clear
 clc
//To find rotational inertia

// GIVEN::

//refer to figure 9-9 from page no. 181
//mass of first partical
m1 = 2.3//in kg
//mass of second partical
m2 = 3.2//in kg
//mass of third partical
m3 = 1.5//in kg

// SOLUTION:
//locating center of mass

x1 = 0//in m
x2 = 0//in m
x3 = 4.0//in m
//x coordinate of center of mass
x_cm = (m1*x1+m2*x2+m3*x3)/(m1+m2+m3)//in m

y1 = 0//in m
y2 = 3.0//in m
y3 = 0//in m
//y coordinate of center of mass
y_cm = (m1*y1+m2*y2+m3*y3)/(m1+m2+m3)//in m
//squqred distance from center of mass to each of particals
//for first partical
r1_square = x_cm^2 + y_cm^2//in m^2
//for second partical
r2_square = x_cm^2 + (y2-y_cm)^2//in m^2
//for third partical
r3_square = (x3-x_cm)^2 + y_cm^2//in m^2
//rotational inertia
I_cm = (m1*r1_square+m2*r2_square+m3*r3_square)//in Kg.m^2

r2_square = nearfloat("succ",3.40)
r3_square = nearfloat("pred",11.74)
I_cm = ceil(I_cm)

printf ("\n\n x coordinate of center of mass x_cm = \n\n %.2f m",x_cm);
printf ("\n\n y coordinate of center of mass y_cm = \n\n %.2f m",y_cm);
printf ("\n\n Squqred distance from center of mass for first partical r1_square = \n\n %.2f m^2",r1_square);
printf ("\n\n Squqred distance from center of mass for second partical r2_square = \n\n %.2f m^2",r2_square);
printf ("\n\n Squqred distance from center of mass for third partical r3_square = \n\n %2i m^2",r3_square);
printf ("\n\n Rotational inertia I_cm = \n\n %.1f Kg.m^2",I_cm);
