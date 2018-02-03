//Find the resultant
//refer fig. 3.14 (a) and (b)
theta1=atand(10/10)
theta2=atand(30/40)
theta3=atand(10/20)
Rx=2*cosd(theta1)+5*cosd(theta2)-1.5*cosd(theta3)  //kN
Ry=2*sind(theta1)-5*sind(theta2)-1.5*sind(theta3)  //kN
R=sqrt(Rx^2+Ry^2)  //kN
alpha=atand(-Ry/Rx)  //Degree
//Moment of forces about O is
MO=2*30*cosd(45)+5*50*sind(theta2)+1.5*10*sind(theta3)  //kN-mm
//distance d of resultant R from O is given as
d=MO/R
printf("The resultant of the system is R=%.3f kN as shown in fig. 3.14(b)",R)



