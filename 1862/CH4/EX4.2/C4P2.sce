


 clc
//to find direction in which crate moving

// GIVEN::
//refer to figure 4-3(a),(b,(c) from page no.68
//mass of crate
m = 62//in kg
//initial velocity of crate in x direction
v0x = 6.4//in m/s
//initial velocity of crate in y direction
v0y = 0//in m/s
//force applied in opposite direction
Fct = 81//in N
//force applied in perpendicular direction
Fcj = 105//in N
//time interval while application of force
t = 3//in seconds

// SOLUTION:

//in x direction -Fct = m*ax
//in y direction Fcj = m*ay
//acceleration in x direction
//applying newton's second laww of motion
ax = -(Fct/m)//in m/s^2
//acceleration in y direction
ay = (Fcj/m)//in m/s^2
//component of velocity of crate in x direction
//applying kinematic equatio
vx = v0x + ax*t
//component of velocity of crate in y direction
//applying kinematic equatio
vy = v0y + ay*t
//resultant velocity of crate
v = sqrt(vx^2 + vy^2)//in m/s
//direction of velocity of crate
theta = atand(vy/vx)//in degrees
theta = nearfloat("succ",64)

printf ("\n\n Acceleration in x direction ax = \n\n %.2f m/s^2",ax);
printf ("\n\n Acceleration in y direction ay = \n\n %.2f m/s^2",ay);
printf ("\n\n Component of velocity of crate in x direction vx = \n\n %.1f m/s",vx);
printf ("\n\n Component of velocity of crate in y direction vy = \n\n %.1f m/s",vy);
printf ("\n\n Resultant velocity of crate v = \n\n %.1f m/s",v);
printf ("\n\n Direction of velocity of crate theta = \n\n %2i degrees",theta);
