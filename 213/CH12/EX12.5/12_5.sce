//To find velocity and angle turned
clc
//Given:
T=40, t=20
N1=2000 //rpm
phi=20 //degrees
addendum=5, m=5 //mm
//Solution:
//Calculating the angular velocity of the smaller gear
omega1=2*%pi*N1/60 //rad/s
//Calculating the angular velocity of the larger gear
omega2=omega1*t/T //rad/s
//Calculating the pitch circle radius of the smaller gear
r=m*t/2 //mm
//Calculating the pitch circle radius of the larger gear
R=m*T/2 //mm
//Calculating the radius of aaddendum circle of smaller gear
rA=r+addendum //mm
//Calculating the radius of addendum circle of larger gear
RA=R+addendum //mm
//Calculating the length of path of approach
KP=sqrt(RA^2-R^2*(cosd(phi))^2)-R*sind(phi) //mm
//Calculating the length of path of recess
PL=sqrt(rA^2-r^2*(cosd(phi))^2)-r*sind(phi) //mm
//Calculating the velocity of sliding at the point of engagement
vSK=(omega1+omega2)*KP //mm/s
//Calculating the velocity of sliding at the point of disengagement
vSL=(omega1+omega2)*PL //mm/s
//Angle through which the pinion turns:
//Calculating the length of path of contact
KL=KP+PL //mm
//Calculating the length of arc of contact
Lac=KL/cosd(phi) //Length of arc of contact, mm
//Calculating the circumference of pinion
C=2*%pi*r //Circumference of pinion, mm
//Calculating the angle through which the pinion turns
angle=Lac*360/C //Angle through which the pinion turns, degrees
//Results:
printf("\n\n Velocity of sliding at the point of engagement, vSK = %d mm/s.\n\n",vSK)
printf(" Since the velocity of sliding is proportional to the distance of the contact point from the pitch point, therefore the velocity of sliding at the pitch point is zero.\n\n")
printf(" Velocity of sliding at the point of disengagement, vsL = %d mm/s.\n\n",vSL)
printf(" Angle through which the pinion turns = %.2f degrees.\n\n",angle)