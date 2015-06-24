clear
clc
//To find rotational inertia
//to find angular acceleration

// GIVEN::

//refer to figure 9-9 from page no. 181
//mass of first partical
m1 = 2.3//in kg
//mass of second partical
m2 = 3.2//in kg
//mass of third partical
m3 = 1.5//in kg
//force applied to m2
F = 4.5//in N
//angle made by force with horizontal
theta = 30//in degrees

// SOLUTION:

//consider firstly the axis passes through m1
r1f = 0.0//in m
r2f = 3.0//in m
r3f = 4.0//in m
//rotational inertia about the axis
I1 = (m1*r1f^2)+(m2*r2f^2)+(m3*r3f^2)//in Kg.m^2

//consider secondly the axis passes through m2
r1s = 3.0//in m
r2s = 0.0//in m
r3s = 5.0//in m
//rotational inertia about the axis
I2 = (m1*r1s^2)+(m2*r2s^2)+(m3*r3s^2)//in Kg.m^2

//consider thirdly the axis passes through m3
r1t = 4.0//in m
r2t = 5.0//in m
r3t = 0.0//in m
//rotational inertia about the axis
I3 = (m1*r1t^2)+(m2*r2t^2)+(m3*r3t^2)//in Kg.m^2
I1 = round(I1)
I2 = round(I2)
I3 = round(I3)

//from figure fi
fi = asind(3/5)//in degrees
//angle between F and line connecting m3 and m2
fi1 = theta + fi//in degrees 
//value of moment arm
r_perpendicular = r3s*sind(fi1)//in m
//magnitude of torque about m3
tow_z = r_perpendicular*F//in N.m
//using rotational inertia about axis through m3
//angular acceleration
az = -(tow_z)/I3//in rad/s^2

printf ("\n\n Rotational inertia about the axis when the axis passes through m1 is I1 = \n\n %2i Kg.m^2",I1);
printf ("\n\n Rotational inertia about the axis when the axis passes through m2 is I2 = \n\n %2i Kg.m^2",I2);
printf ("\n\n Rotational inertia about the axis when the axis passes through m3 is I3 = \n\n %3i Kg.m^2",I3);
printf ("\n\n Magnitude of torque about m3 tow_z = \n\n %.1f N.m",tow_z);
printf ("\n\n Angular acceleration az = \n\n %.2f rad/s^2",az);
