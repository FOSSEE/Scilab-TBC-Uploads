//To find length of path of contact
clc
//Given:
t=30, T=80
phi=20 //degrees
m=12 //mm
Addendum=10 //mm
//Solution:
//Length of path of contact:
//Calculating the pitch circle radius of pinion
r=m*t/2 //mm
//Calculating the pitch circle radius of gear
R=m*T/2 //mm
//Calculating the radius of addendum circle of pinion
rA=r+Addendum //mm
//Calculating the radius of addendum circle of gear
RA=R+Addendum //mm
//Calculating the length of path of approach
//Refer Fig. 12.11
KP=sqrt(RA^2-R^2*(cosd(phi))^2)-R*sind(phi) //mm
//Calculating the length of path of recess
PL=sqrt(rA^2-r^2*(cosd(phi))^2)-r*sind(phi) //mm
//Calculating the length of path of contact
KL=KP+PL //mm
//Calculating the length of arc of contact
Lac=KL/cosd(phi) //Length of arc of contact, mm
//Contact ratio:
//Calculating the circular pitch
Pc=%pi*m //mm
//Calculating the contact ratio
CR=Lac/pc //Contact ratio
//Results:
printf("\n\n Length of path of contact, KL = %.1f mm.\n\n",KL)
printf(" Length of arc of contact = %.2f mm.\n\n",Lac)
printf(" Contact ratio = %d.\n\n",CR)