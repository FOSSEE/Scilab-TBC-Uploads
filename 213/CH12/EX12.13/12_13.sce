//To find teeth and velocity
clc
//Given:
G=3
m=6, AP=1*m, AW=AP //mm
phi=20 //degrees
N1=90 //rpm
//Solution:
//Calculating the angular speed of the pinion
omega1=2*%pi*N1/60 //rad/s
//Calculating the number of teeth on the pinion to avoid interference on it
t=2*AP/(sqrt(1+G*(G+2)*(sind(phi))^2)-1)
//Calculating the corresponding number of teeth on the wheel
T=G*t
//Length of path and arc of contact:
//Calculating the pitch circle radius of pinion
r=m*t/2 //mm
//Calculating the radius of addendum circle of pinion
rA=r+AP //mm
//Calculating the pitch circle radius of wheel
R=m*T/2 //mm
//Calculating the radius of addendum circle of wheel
RA=R+AW //mm
//Calculating the path of approach
KP=sqrt(RA^2-R^2*(cosd(phi))^2)-R*sind(phi) //mm
//Calculating the path of recess
PL=sqrt(rA^2-r^2*(cosd(phi))^2)-r*sind(phi) //mm
//Calculating the length of path of contact
KL=KP+PL //mm
//Calculating the length of arc of contact
Lac=KL/cosd(phi) //Length of arc of contact, mm
//Number of pairs of teeth in contact:
//Calculating the circular pitch
pc=%pi*m //mm
//Calculating the number of pairs of teeth in contact
n=Lac/pc //Number of pairs of teeth in contact
//Maximum velocity of sliding:
//Calculating the angular speed of wheel
omega2=omega1*t/T //rad/s
//Calculating the maximum velocity of sliding
vs=(omega1+omega2)*KP //mm/s
//Results:
printf("\n\n Number of teeth on the pinion to avoid interference, t = %d.\n\n",t+1)
printf(" Corresponding number of teeth on the wheel, T = %d.\n\n",T+1)
printf(" Length of path of contact, KL = %.2f mm.\n\n",KL)
printf(" Length of arc of contact = %.2f mm.\n\n",Lac)
printf(" Number of pairs of teeth in contact = %d.\n\n",n+1)
printf(" Maximum velocity of sliding, vs = %.2f mm/s.\n\n",vs)