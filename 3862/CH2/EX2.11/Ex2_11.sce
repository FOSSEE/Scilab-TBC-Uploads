clear
//

//variable declaration

PB=2.0       //loading at B,KN
PC=sqrt(3.0) //loading at C,KN
PD=5.0       //loading at D,KN
PE=PC        //loading at E,KN
PF=PB        //loading at F,KN

//Let O be the centre of the encircling circle A, B, C, D, E and F. In regular hexagon each side is equal to the radius AO. Hence OAB is equilateral triangle.

angleoab=60.0*%pi/180
anglecab=angleoab/2.0
theta1=anglecab
theta2=(angleoab-theta1)
theta3=theta1
theta4=theta1

//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up
Fx=PB*cos(theta1+theta2)+PC*cos(theta2)+PD+PE*cos(theta3)+PF*cos(theta3+theta4)

Fy=-PB*sin(theta1+theta2)-PC*sin(theta2)+0+PE*sin(theta3)+PF*sin(theta3+theta4)

R=sqrt((Fx**2)+(Fy**2))
printf("\n R= %0.2f  KN",R)

theta=atan(Fy/Fx)*180/%pi 
