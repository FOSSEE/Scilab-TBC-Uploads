//To find addendum
clc
//Given:
T=40, t=T
phi=20 //degrees
m=6 //mm
//Solution:
//Calculating the circular pitch
pc=%pi*m //mm
//Calculating the length of arc of contact
Lac=1.75*pc //Length of arc of contact, mm
//Calculating the length of path of contact
Lpc=Lac*cosd(phi) //Length of path of contact, mm
//Calculating the pitch circle radii of each wheel
R=m*T/2 //mm
r=R //mm
//Calculating the radius of the addendum circle of each wheel
RA=sqrt(R^2*(cosd(phi))^2+(Lpc/2+R*sind(phi))^2) //mm
//Calculating the addendum of the wheel
Ad=RA-R //Addendum of the wheel, mm
//Results:
printf("\n\n Addendum of the wheel = %.2f mm.\n\n",Ad)