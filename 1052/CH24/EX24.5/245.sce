clc;
//Example 24.5
//page no 357
printf("Example 24.5 page no 357\n\n");
//a circular cylinder filled with water is rotated a uniform ,steady angular speed about it's central axis in rigid body motion
//since the cylinder is full the water will spill the moment the cylinder starts to spin ,spilling occur when omega > 0 rpm
// to determine the angular speed for 1/3 of the water to spill , consider the cylinder at rest when 1/3 of the water has already beem spilled
g=32.174//grav. acc
R = 0.25 //radius  of cylinder
z_st=2/3//the stationary height, ft
h = 2*(1-z_st)//increase in height is h/2,ft
omega=sqrt(4*g*(h/2)/R^2) 
printf("\n omega =%f rad/s",omega);
