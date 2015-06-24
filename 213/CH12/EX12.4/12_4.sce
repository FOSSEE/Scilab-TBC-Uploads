//To find angle and maximum velocity
clc
//Given:
phi=20 //degrees
t=20, G=2
m=5 //mm
v=1.2 //m/s
addendum=1*m //mm
//Solution:
//Angle turned through by pinion when one pair of teeth is in mesh:
//Calculating the pitch circle radius of pinion
r=m*t/2 //mm
//Calculating the pitch circle radius of wheel
R=m*G*t/2 //mm
//Calculating the radius of addendum circle of pinion
rA=r+addendum //mm
//Calculating the radius of addendum circle of wheel
RA=R+addendum //mm
//Calculating the length of path of approach
KP=sqrt(RA^2-R^2*(cosd(phi))^2)-R*sind(phi) //mm
//Calculating the length of path of recess
PL=sqrt(rA^2-r^2*(cosd(phi))^2)-r*sind(phi) //mm
//Calculating the length of path of contact
KL=KP+PL //mm
//Calculating the length of arc of contact
Lac=KL/cosd(phi) //mm
//Calculating the angle turned by the pinion
angle=Lac*360/(2*%pi*r) //Angle turned by the pinion, degrees
//Maximum velocity of sliding:
//Calculating the angular speed of pinion
omega1=v*1000/r //rad/s
//Calculating the angular speed of wheel
omega2=v*1000/R //rad/s
//Calculating the maximum velocity of sliding
vS=(omega1+omega2)*KP //mm/s
//Results:
printf("\n\n Angle turned through by pinion when one pair of teeth is in mesh = %.2f degrees.\n\n",angle)
printf(" Maximum velocity of sliding, vS = %.1f mm/s.\n\n",vS)