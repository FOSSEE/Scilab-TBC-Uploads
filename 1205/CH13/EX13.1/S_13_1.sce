clc;

m=1000;//kg, mass of automobile
theta=5;//degree, angle of inclination
theta=theta*%pi/180;//rad, Conversion into radian
v=72;//km/h, speed of automobile
v=v*1000/3600;//m/s, conversion into m/s
f=5000;//n, braking force
g=9.81;//m/s^2, Acceleration due to gravity
//Position 1
T1=1/2*m*v^2;//J, kinetic energy
// Work during displacement
//U12=-f*x+m*g*sin(theta)*x;
T2=0;//J
//By principle of work and energy..
//T1+U12=T2, gives
x=T1/(f-m*g*sin(theta));//m, distance travelled by the automobile as it comes to stop

printf("Therfore distance travelled by the automobile as it comes to stop is x= %0.2f m \n",x);
