// Example 2_12
clc;funcprot(0);
// Given data
v_0=250;// km/h
theta_i=15;// degree
a=0.8;// m/s^2
t=60;// seconds
s_0=0;// m
x=3000;// m

// Calculation
// (a)
v_0=v_0/3.6;// m/s
v=v_0+(a*t);// m/s
s=s_0+(v_0*t)+((1/2)*a*t^2);// m
y=s*cosd(theta_i);// m
theta=atand(y/x);// degree
r=sqrt(x.^2+y.^2);// m
v_xy=v*cosd(theta_i);// m/s
v_r=v_xy*sind(theta);// m/s
v_theta=v_xy*cosd(theta);// m/s
thetadot=v_theta/r;// rad/s
zdot=v*sind(theta_i);// m/s
v_z=zdot;// m/s
// (b)
z=y*tand(theta_i);// m
phi=atand(z/r);// degree
R=sqrt(r^2+z^2);// m
v_R=(v_r*cosd(phi))+(zdot*sind(phi));// m/s
v_phi=(zdot*(cosd(phi)))-(v_r*sind(phi));// m/s
phidot=v_phi/R;// m/s
printf("\n(a)v_r=%2.1f m/s \n   thetadot=%1.2e rad/s \n   zdot=v_z=%2.1f m/s \n(b)v_R=%3.1f m/s \n   thetadot=%1.2e rad/s \n   phidot=%1.3e rad/s",v_r,thetadot,zdot,v_R,thetadot,phidot);
