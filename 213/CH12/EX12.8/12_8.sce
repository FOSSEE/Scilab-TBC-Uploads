//To find path and arc of contact
clc
//Given:
t=20, T=40
m=10 //mm
phi=20 //degrees
//Solution:
//Addendum height for each gear wheel:
//Calculating the pitch circle radius of the smaller gear wheel
r=m*t/2 //mm
//Calculating the pitch circle radius of the larger wheel
R=m*T/2 //mm
//Calculating the radius of addendum circle for the larger gear wheel
RA=sqrt((r*sind(phi)/2+R*sind(phi))^2+R^2*(cosd(phi))^2) //mm
//Calculating the addendum height for larger gear wheel
addendumg=RA-R //mm
//Calculating the radius of addendum circle for the smaller gear wheel
rA=sqrt((R*sind(phi)/2+r*sind(phi))^2+r^2*(cosd(phi))^2) //mm
//Calculating the addendum height for smaller gear wheel
addendump=rA-r //mm
//Calculating the length of the path of contact
Lpc=(r+R)*sind(phi)/2 //Length of the path of contact, mm
//Calculating the length of the arc of contact
Lac=Lpc/cosd(phi) //Length of the arc of contact, mm
//Contact ratio:
//Calculating the circular pitch
pc=%pi*m //mm
//Calculating the contact ratio
CR=Lpc/pc //Contact ratio
//Results:
printf("\n\n Addendum height for larger gear wheel = %.1f mm.\n\n",addendumg)
printf(" Addendum height for smaller gear wheel = %.1f mm.\n\n",addendump)
printf(" Length of the path of contact = %.1f mm.\n\n",Lpc)
printf(" Length of the arc of contact = %.1f mm.\n\n",Lac)
printf(" Contact ratio = %d.\n\n",CR+1)