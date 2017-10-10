// Example 2_8
clc;funcprot(0);
// Given data
g=30;// The acceleration due to gravity in ft/sec^2
theta=15;// The direction of its trajectory in degree
v=12000;// The velocity in mi/hr
a_x=20;// The horizontal component of acceleration in ft/sec^2
a_y=g;// The downward acceleration component in ft/sec^2

// Calculation
a_n=(a_y*cosd(theta))-(a_x*sind(theta));// The normal component of acceleration in ft/sec^2
a_t=(a_y*sind(theta))+(a_x*cosd(theta));// The tangential component of acceleration in ft/sec^2
// (a)
v=v*44/30;// ft/sec
rho=v^2/a_n;// The radius of curvature in ft
// (b)
vdot=a_t;// The t-component of acceleration in ft/sec^2
// (c)
betadot=v/rho;// The angular rate of line GC in rad/sec
// (d)
a=[a_n,a_t];// The total acceleration in ft/sec^2
printf("\n(a) The radius of curvature,rho=%2.2e ft \n(b)The t-component of acceleration,v_dot=%2.1f ft/sec^2 \n(c)The angular rate of line GC,betadot=%2.2e rad/sec \n(d)The total acceleration,a=%2.1f e_n+%2.1f e_t ft/sec^2",rho,vdot,betadot,a(1),a(2));
