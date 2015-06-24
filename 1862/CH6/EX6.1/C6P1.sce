
clear
 clc
//to find impluse of the force exerted on the ball.
//to find average force assuming collision lasts for 1.5ms
//to find the change in momentum of the bat

// GIVEN::
//refer to figure 6-8(a) on page no. 123
//mass of baseball
m = 0.14//in kg
//refer to figure 6.1
//horizontal speed of the ball
vi = 42//in m/s
//speed at which ball leaes i.e. final speed of the ball
vf = 50//in m/s
//angle at which  ball leaves
fi = 35//in degrees
//time for which collision lasts 
delta_t = 0.0015//in seconds

// SOLUTION:

//refer to figure 6-8(a) on page no. 123
//component of final momentum in x direction
pfx = m*vf*cosd(fi)//in kgm/s
//component of final momentum in y direction
pfy = m*vf*sind(fi)//in kgm/s
//since initial momentum has only x componen
piy = 0//in kgm/s
//component of intial momentum in x direction
//considering our coordinate system as shown 6-8(a)
pix = m*(-vi)//in kgm/s
//using impluse momentum relation
//component of impluse in x direction 
Jx = pfx-pix//in kgm/s
//component of impluse in y direction 
Jy = pfy-piy//in kgm/s
//final magnitude of impluse
J = sqrt(Jx^2 + Jy^2)//in kgm/s
//direction in which impluse acts
theta = atand(Jy/Jx)//in degrees
//average force
//using impluse force relationship
Fav = J/delta_t//in N
Fav = nearfloat("succ",8200)

//applying newton's third law of motion
//for bat delta_px will be equal and opposite to that of ball
//component change in momemtum in x direction
delta_px = -(pfx - pix)//in kgm/s
//component change in momemtum in y direction
delta_py = -(pfy - piy)//in kgm/s

printf ("\n\n Component of final momentum in x direction pfx  = \n\n %.1f kgm/s",pfx);
printf ("\n\n Component of final momentum in y direction pfy  = \n\n %.1f kgm/s",pfy);
printf ("\n\n Component of intial momentum in x direction pix = \n\n %.1f kgm/s",pix);
printf ("\n\n Component of impluse in x direction Jx  = \n\n %.1f kgm/s",Jx);
printf ("\n\n Component of impluse in y direction Jy  = \n\n %.1f kgm/s",Jy);
printf ("\n\n Final magnitude of impluse J = \n\n %.1f kgm/s",J);
printf ("\n\n Direction in which impluse acts theta = \n\n %2i degrees",theta);
printf ("\n\n Average force Fav = \n\n %4i N",Fav);
printf ("\n\n Component change in momemtum in x direction delta_px = \n\n %.1f kgm/s",delta_px);
printf ("\n\n Component change in momemtum in y direction delta_py = \n\n %.1f kgm/s",delta_py);
