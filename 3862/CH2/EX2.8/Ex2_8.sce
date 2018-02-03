clear
//

//variable declaration

P1=20.0
P2=30.0
P3=20.0
theta3=60.0*%pi/180.0

//Taking horizontal direction towards left as x axis and the vertical downward direction as y axis. 
////sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up

Fx=20.0*cos(theta3)
Fy=P1+P2+P3*sin(theta3)


R=sqrt((Fx**2)+(Fy**2))
printf("\n R= %0.4f  KN",R)

alpha=atan(Fy/Fx)*180/%pi 
printf("\n alpha= %0.2f  °",alpha)

//moment at A

MA=P1*1.5+P2*3.0+P3*sin(theta3)*6.0

//The distance of the resultant from point O is given by:

d=MA/R
x=d/sin(alpha*%pi/180)
printf("\n x= %0.3f  m",x)
