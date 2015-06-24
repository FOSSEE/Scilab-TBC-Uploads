//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.11w
//calculation of time of flight,horizontal range and vertical range

//given data
u=20//initial velocity(in m/s) of the football
theta=45//angle(in degree) made by the football with ground
g=10//gravitational acceleration(in m/s^2)

//calculation
ux=u*cosd(theta);
uy=u*sind(theta);

t=(2*uy)/g;// from equation y=(uy*t)+((1/2)*g*t*t)......taking y=0
H=((uy*uy)/(2*g));//from equation (vy*vy)=(uy*uy)-(2*g*y)       taking vy=0
x=ux*t;//horizontal distance travelled at ux velocity

printf('the time taken by the ball to strike the ground is %3.2f s',t);
printf('\nthe maximum height reached by the ball is %3.2f m',H);
printf('\nthe horizontal distance travelled by the ball before reaching the ground is %3.2f m',x);
