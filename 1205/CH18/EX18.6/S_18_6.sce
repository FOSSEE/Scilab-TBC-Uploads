clc;
m=300;//g, mass of each rod
mom=1/1000;//given mo/m
vo=2000;//m/s, relative velocity
wo=60;//rpm
wo=wo*2*%pi/60;//rad/s, conversion
a=800;//mm, radius of disk
a=a/1000;//m, conversion into meter
//By theorytical work we get
wx=-4/5*mom*vo/a;//rad/s , x component of angular velocity 
wy=0;//rad/s , y component of angular velocity 
wz=wo;//rad/s , x component of angular velocity 
w=norm([wx,wy,wz]);//rad/s
w=w/2/%pi*60;//rpm, conversion into rpm
gama=atan(-wx/wz);//rad, 


//precession axis

theta=atan(2*mom*vo/a/wo);//rad, angle forme by precession axis and z axis

//by law of sines
phi=w*sin(gama)/sin(theta);// rpm, rates of precession
psi=w*sin(theta-gama)/sin(theta);// rpm, rates of spin

gama=gama*180/%pi;//degree, conversion into degree
theta=theta*180/%pi;//degree, conversion into degree
printf("The angular velocity after impact is w= %.1f rpm with angle gamma= %.1f degree\n",w,gama);
printf("Angle formed by precession axis and z axis is theta= %.1f degree\n",theta);
printf("Rate of precession is psi= %.1f rpm \n rate of spin is psi=%.1f rpm\n",phi,psi)
