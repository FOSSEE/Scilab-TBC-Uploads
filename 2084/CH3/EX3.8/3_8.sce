//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.8
//calculation of velocity and position of the particle

//given data
a=1.5; //acceleration(in m/s^2) of the particle
theta=37; //angle(in degree) made by particle with X axis
ux=8; //x component of initial velocity(in m/s) of the particle 
uy=0; //y component of initial velocity(in m/s) of the particle 
t=4; //time(in s)

//calculation
ax=a*cosd(theta);
ay=a*sind(theta);

vx=ux+(ax*t); //formula of x component of final velocity
vy=uy+(ay*t); //formula of y component of final velocity
v=sqrt((vx*vx)+(vy*vy));
thetav=atand(vy/vx);

x=(ux*t)+((ax*t*t)/2); //formula for x coordinate of particle at time t
y=(uy*t)+((ay*t*t)/2); //formula for y coordinate of particle at time t

printf('the velocity of the particle at t=4 s is %f m/s and angle made with X axis is %f degree',v,thetav)
printf('the particle is at(%f,%f)m at  time t=4 s',x,y)
