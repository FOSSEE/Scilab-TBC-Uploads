//Determining the resultant
clc
//Given-
//inclination of 200N force with x axis calculated by using slope of 200N force as shown in fig.2.8
theta1=atand(1/2)   //degree
//inclination of 120N force with x axis calculated by using slope of 120N force as shown in fig.2.8
theta2=atand(4/3)   //degree
//summation of forces in X direction
Fx=200*cosd(26.565)-120*cosd(53.13)-50*cosd(60)+100*sind(40) //N
//summation of forces in Y direction
Fy=200*sind(26.565)+120*sind(53.13)-50*sind(60)-100*cosd(40) //N
//Resultant
R=sqrt((Fx)^2+(Fy)^2)   //N
//inclination of resultant w.r.t X axis
alpha=atand(65.5/146.2)   //degree
printf("The resultant of given forces :-\nR=%.1f N.\n",R)
printf("Inclination of resultant w.r.t X-axis :-\nalpha=%.1f degree.",alpha)
