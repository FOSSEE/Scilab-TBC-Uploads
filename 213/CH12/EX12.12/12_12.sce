//To find sliding velocities and contact ratio
clc
//Given:
phi=20 //degrees
t=30, T=50, m=4
N1=1000 //rpm
//Solution:
//Calculating the angular speed of thr pinion
omega1=2*%pi*N1/60 //rad/s
//Sliding velocities at engagement and at disengagement of a pair of teeth:
//Calculating the addendum of the smaller gear
addendump=m*t/2*(sqrt(1+T/t*(T/t+2)*(sind(phi))^2)-1) //Addendum of the smaller gear, mm
//Calculating the addendum of the larger gear
addendumg=m*T/2*(sqrt(1+t/T*(t/T+2)*(sind(phi))^2)-1) //Addendum of the larger gear, mm
//Calculating the pitch circle radius of the smaller gear
r=m*t/2 //mm
//Calculating the radius of addendum circle of the smaller gear
rA=r+addendump //mm
//Calculating the pitch circle radius of the larer gear
R=m*T/2 //mm
//Calculating the radius of addendum circle of the larger gear
RA=R+addendumg //mm
//Calculating the path of approach
KP=sqrt(RA^2-R^2*(cosd(phi))^2)-R*sind(phi) //mm
//Calculating the path of recess
PL=sqrt(rA^2-r^2*(cosd(phi))^2)-r*sind(phi) //mm
//Calculating the angular speed of the larger gear
omega2=omega1*t/T //rad/s
//Calculating the sliding velocity at engagement of a pair of teeth
v1=(omega1+omega2)*KP //Sliding velocity at engagement of a pair of teeth, mm/s
//Calculating the sliding velocity at disengagement of a pair of teeth
v2=(omega1+omega2)*PL //Sliding velocity at disengagement of a pair of teeth, mm/s
//Contact ratio:
//Calculating the length of the arc of contact
Lac=(KP+PL)/cosd(phi) //mm
//Calculating the circular pitch
pc=%pi*m //Circular pitch, mm
//Calculating the contact ratio
CR=Lac/pc //Contact ratio
//Results:
printf("\n\n Sliding velocity at engagement of a pair of teeth = %.3f m/s.\n\n",v1/1000)
printf(" Sliding velocity at disengagement of a pair of teeth = %.3f m/s.\n\n",v2/1000)
printf(" Contact ratio = %d.\n\n",CR+1)