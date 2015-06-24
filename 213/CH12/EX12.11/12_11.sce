//To find addenda and velocity
clc
//Given:
phi=16 //degrees
m=6 //mm
t=16, G=1.75, T=G*t
N1=240 //rpm
//Solution:
//Calculating the angular speed of the pinion
omega1=2*%pi*N1/60 //rad/s
//Addenda on pinion and gear wheel:
//Calculating the addendum on pinion
addendump=m*t/2*(sqrt(1+T/t*(T/t+2)*(sind(phi))^2)-1) //Addendum on pinion, mm
//Calculating the addendum on wheel
addendumg=m*T/2*(sqrt(1+t/T*(t/T+2)*(sind(phi))^2)-1) //Addendum on wheel, mm
//Length of path of contact:
//Calculating the pitch circle radius of wheel
R=m*T/2 //mm
//Calculating the pitch circle radius of pinion
r=m*t/2 //mm
//Calculating the addendum circle radius of wheel
RA=R+addendump //mm
//Calculating the addendum circle radius of pinion
rA=r+addendumg //mm
//Calculating the length of path of approach
KP=sqrt(RA^2-R^2*(cosd(phi))^2)-R*sind(phi) //mm
//Calculating the length of path of recess
PL=sqrt(rA^2-r^2*(cosd(phi))^2)-r*sind(phi) //mm
//Calculating the length of path of contact
KL=KP+PL //mm
//Maximum velocity of sliding of teeth on either side of pitch point:
//Calculating the angular speed of gear wheel
omega2=omega1/G //rad/s
//Calculating the maximum velocity of sliding of teeth on the left side of pitch point
vmaxl=(omega1+omega2)*KP //Maximum velocity of sliding of teeth on the left side of pitch point, mm/s
//Calculating the maximum velocity of sliding of teeth on the right side of pitch point
vmaxr=(omega1+omega2)*PL //Maximum velocity of sliding of teeth on the right side of pitch point, mm/s
//Results:
printf("\n\n Addendum on pinion = %.2f mm.\n\n",addendump)
printf(" Addendum on wheel = %.2f mm.\n\n",addendumg)
printf(" Length of path of contact, KL = %.2f mm.\n\n",KL)
printf(" Maximum velocity of sliding of teeth on the left side of pitch point = %d mm/s.\n\n",vmaxl)
printf(" Maximum velocity of sliding of teeth on the right side of pitch point = %d mm/s.\n\n",vmaxr)