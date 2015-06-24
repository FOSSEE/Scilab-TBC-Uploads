//To find length of path of contact
clc
//Given:
t=18, T=72
phi=20 //degrees
m=4 //mm
addendump=8.5 //Addendum on pinion, mm
addendumg=3.5 //Addendum on gear, mm
//SOlution:
//Refer Fig. 12.12
//Calculating the pitch circle radius of the pinion
r=m*t/2 //mm
//Calculating the pitch circle radius of the gear
R=m*T/2 //mm
//Calculating the radius of addendum circle of the pinion
rA=r+addendump //mm
//Calculating the radius of addendum circle of the gear
RA=R-addendumg //mm
//Calculating the radius of the base circle of the pinion
O1M=r*cosd(phi) //mm
//Calculating the radius of the base circle of the gear
O2N=R*cosd(phi) //mm
//Calculating the length of path of approach
KP=R*sind(phi)-sqrt(RA^2-O2N^2) //mm
//Calculating the length of path of recess
PL=sqrt(rA^2-O1M^2)-r*sind(phi) //mm
//Calculating the length of the path of contact
KL=KP+PL //mm
//Results:
printf("\n\n Length of the path of contact, KL = %.2f mm.\n\n",KL)