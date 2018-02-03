clear
//

//Each load is 20 kN.

//variable declaration

P=20.0
AB=18.0
A=3.0

RA=P*7/2
RB=RA

theta1=30.0*%pi/180
a=(3*A)/(4*cos(theta1))
//Take Section (A)–(A) and consider the equilibrium of left hand side part of the French Truss
//Drop perpendicular CE on AB. 

CE=3*A*tan(theta1)
DE=A

theta=atan(CE/DE)*180/%pi 
printf("\n theta= %0.0f  °",theta)

//moment at point A

F2=(P*a*cos(theta1)*6)/(A*2*sin(theta*%pi/180))
printf("\n F2= %0.4f KN (Tension)", F2)

//sum of all vertical forces & sum of all horizotal forces is zero
F1=(F2*sin(theta*%pi/180)+RA-P*3)/(sin(theta1))
printf("\n F1= %0.4f KN (Comp)",F1)

F3=F1*cos(theta1)-F2*cos(theta*%pi/180)
printf("\n F3= %0.4f KN (Tension)",F3)
