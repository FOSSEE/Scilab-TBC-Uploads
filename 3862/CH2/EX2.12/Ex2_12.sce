clear
//

//variable declaration

P1=2.0       //loading at 1,KN
P2=1.5       //loading at 2,KN
P3=5.0       //loading at 3,KN
a=10.0       //side length,mm

// If theta1, theta2 and theta3 are the slopes of the forces 2 kN, 5 kN and 1.5 kN forces with respect to x axis, then 


theta1=atan(a/a)
theta2=atan((3*a)/(4*a))
theta3=atan((a)/(2*a))


//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up
Fx=P1*cos(theta1)+P3*cos(theta2)-P2*cos(theta3)

Fy=P1*sin(theta1)-P3*sin(theta2)-P2*sin(theta3)

R=sqrt((Fx**2)+(Fy**2))
printf("\n R= %0.2f  N",R)

alpha=atan(Fy/Fx)*180/%pi 
printf("\n alpha= %0.2f  °",(-alpha))

//Distance d of the resultant from O is given by
//Rd=sum of moment at A

d=((a*3)*P1*cos(theta1)+(5*a)*P3*sin(theta2)+P2*(a)*sin(theta3))/(4.66)
printf("\n d= %0.2f  mm",d)
