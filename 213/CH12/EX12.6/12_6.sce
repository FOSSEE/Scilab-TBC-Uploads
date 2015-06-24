//To find teeth, angle and ratio
clc
//Given:
phi=20 //degrees
m=6, addendum=1*m //mm
t=17, T=49
//Solution:
//Number of pairs of teeth in contact:
//Calculating the pitch circle radius of pinion
r=m*t/2 //mm
//Calculating the pitch circle radius of gear
R=m*T/2 //mm
//Calculating the radius of addendum circle of pinion
rA=r+addendum //mm
//Calculating the radius of addendum circle of gear
RA=R+addendum //mm
//Calculating the length of path of approach
//Refer Fig. 12.11
KP=sqrt(RA^2-R^2*(cosd(phi))^2)-R*sind(phi) //mm
//Calculating the length of path of recess
PL=sqrt(rA^2-r^2*(cosd(phi))^2)-r*sind(phi) //mm
//Calculating the length of path of contact
KL=KP+PL //mm
//Calculating the length of arc of contact
Lac=KL/cosd(phi) //Length of arc of contact, mm
//Calculating the circular pitch
pc=%pi*m //mm
//Calculating the number of pairs of teeth in contact
n=Lac/pc //Number of pairs of teeth in contact
//Angle turned by the pinion and gear wheel when one pair of teeth is in contact:
//Calculating the angle turned through by the pinion
anglep=Lac*360/(2*%pi*r) //Angle turned through by the pinion, degrees
//Calculating the angle turned through by the wheel
angleg=Lac*360/(2*%pi*R) //Angle turned through by the gear wheel, degrees
//Ratio of sliding to rolling motion:
//At the instant when the tip of a tooth on the larger wheel is just making contact with its mating teeth
r1=((1+t/T)*KP)/r //Ratio of sliding velocity to rolling velocity
//At the instant when the tip of a tooth on a larger wheel is just leaving contact with its mating teeth
r2=((1+t/T)*PL)/r //Ratio of sliding velocity to rolling velocity
//Results:
printf("\n\n Number of pairs of teeth in contact = %d.\n\n",n+1)
printf(" Angle turned through by the pinion = %.1f degrees.\n\n",anglep)
printf(" Angle turned through by the gear wheel = %d degrees.\n\n",angleg)
printf(" At the instant when the tip of a tooth on the larger wheel is just making contact with its mating teeth, ratio of sliding velocity to rolling velocity = %.2f.\n\n",r1)
printf(" At the instant when the tip of a tooth on a larger wheel is just leaving contact with its mating teeth, ratio of sliding velocity to rolling velocity = %.3f.\n\n",r2)
printf(" Since at the pitch point, the sliding velocity is zero,, therefore the ratio of sliding velocity to rolling velocity is zero.\n\n")