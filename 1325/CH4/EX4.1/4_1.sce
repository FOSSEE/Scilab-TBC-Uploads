//To find the extreme angular velocities of the driven shaft and its maximum acceleration
clc
//given
rpm=1000
angle=20//degree
ang=(angle*%pi)/180
printf("\n")
w=2*%pi*rpm/60
printf("The angular velocity of the driving shaft is %.1f rad/s \n",w)
//maximum value of w1=w/cos(angle) and minimum value w2=w*cos(angle)
w1=w/cos(ang)
w2=w*cos(ang)
printf("Extreme angular velocities :-\n")
printf("maximum value of angular velocity w1=%.1f rad/s \nminimum value of angular velocity w2=%.1f rad/s\n",w1,w2)
//using equation 4.11, cos(2x)=(2*sin(angle)^2)/(2-sin(angle)^2)
x=acos((2*sin(ang)^2)/(2-sin(ang)^2))*180/(%pi)
y=360-x//for cosine inverse, angle and 360-angle are same and must be considered
x1=x/2
y1=y/2
printf("The acceleration of driven shaft is a maximum when theta =%.2f or %.2f degrees\n",x1,y1)
amax=(w^2*cos(ang)*(sin(ang)^2)*sin(x*%pi/180))/((1-((cos(x1*%pi/180)^2)*(sin(ang)^2)))^2)//maximum angular acceleration, numerically
printf("Maximum angular acceleration is %.f rad/s^2\n",amax)

